package com.stockex.stockexch.Controllers;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.stockex.stockexch.Entities.BuyOrder;
import com.stockex.stockexch.Entities.Order_book;
import com.stockex.stockexch.Entities.Orders;
import com.stockex.stockexch.Entities.SellOrder;
import com.stockex.stockexch.Entities.User;
import com.stockex.stockexch.Repos.OrdersRepo;
import com.stockex.stockexch.Service.BuyOrderService;
import com.stockex.stockexch.Service.OrderService;
import com.stockex.stockexch.Service.Order_bookService;
import com.stockex.stockexch.Service.SellOrderService;
import com.stockex.stockexch.Service.UserService;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class StockExchController {
    @Autowired
    @Qualifier("userServiceIMPL")
    private UserService userService;
    @Autowired
    @Qualifier("order_bookServiceIMPL")
    private Order_bookService order_bookService;
    @Autowired
    @Qualifier("orderServiceIMPL")
    private OrderService orderService;
    @Autowired
    @Qualifier("buyOrderServiceIMPL")
    private BuyOrderService buyOrderService;
    @Autowired
    @Qualifier("sellOrderServiceIMPL")
    private SellOrderService sellOrderService;
    User user;
    HttpSession userSession;

    @GetMapping("/")
    public String home() {
        return "index"; // Here "index" is the name of jsp file
    }

    @RequestMapping(value = "/login", method = { RequestMethod.GET, RequestMethod.POST })
    public String login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("loggedin " + user);
        if (request.getParameter("login") != null) {
            String email = (String) request.getParameter("username");
            String pass = (String) request.getParameter("password");
            System.out.println(email + " " + pass);
            User user = userService.userLogin(email, pass);
            if (user != null) {
                HttpSession userSession = request.getSession(true);
                userSession.setAttribute("user", user);
                System.out.println("loggedon" + user);
                return "redirect:/dashboard";
            } else {
                return "login";
            }
        } else
            return "login";
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        userSession = request.getSession(true);
        if (userSession.getAttribute("user") == null) {
            return "index";
        } else {
            userSession.invalidate();
            System.out.println("loggedout");
            return "logout";
        }
    }

    @RequestMapping(value = "/reg", method = { RequestMethod.GET, RequestMethod.POST })
    public String reg(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        userSession = request.getSession(true);
        if (request.getParameter("register") != null) {
            String firstName = (String) request.getParameter("firstName");
            String lastName = (String) request.getParameter("lastName");
            String address = (String) request.getParameter("address");
            String pass = (String) request.getParameter("pass");
            String email = (String) request.getParameter("email");
            // register user
            User user1;
            User userRegistered;
            try {
                user1 = new User(firstName, lastName, address, email, pass);
                userRegistered = userService.addUser(user1);
            } catch (Exception e) {
                return "register";
            }

            System.out.println(userRegistered);
            if (userRegistered != null) {
                return "redirect:/login";
            } else {
                return "register";
            }
        } else
            return "register";
    }

    @GetMapping("/pd")
    public String details(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        userSession = request.getSession(true);
        User user = (User) userSession.getAttribute("user");
        System.out.println(user.getU_ID());
        return "personal_details";
    }

    @RequestMapping(value = "/ch", method = { RequestMethod.GET, RequestMethod.POST })
    public String ch(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        userSession = request.getSession(true);
        User user = (User) userSession.getAttribute("user");
        if (request.getParameter("saveChanges") != null) {
            String firstName = (String) request.getParameter("firstName");
            System.out.println(firstName);
            if (firstName != "") {
                userService.updateUserFirstNameByUser(user, firstName);
            }
            String lastName = (String) request.getParameter("lastName");
            System.out.println(lastName);
            if (lastName != "") {
                userService.updateUserLastNameByUser(user, lastName);
            }
            String address = (String) request.getParameter("address");
            System.out.println(address);
            if (address != "") {
                userService.updateUserAddressByUser(user, address);
            }
            String pass = (String) request.getParameter("pass");
            System.out.println(pass);
            if (pass != "") {
                userService.updateUserPasswordByUser(user, pass);
            }
            String email = (String) request.getParameter("email");
            System.out.println(email);
            if (email != "") {
                userService.updateUserEmailByUser(user, email);
            }
            return "personal_details";
        } else
            return "change_details";
    }

    @RequestMapping(value = "/dashboard", method = { RequestMethod.GET, RequestMethod.POST })
    public String dashboard(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        userSession = request.getSession(true);
        user = (User) userSession.getAttribute("user");
        if (request.getParameter("cancel") != null) {
            int orderID = Integer.parseInt(request.getParameter("id"));
            List<Orders> orderList = user.getOrders();
            Iterator<Orders> it = orderList.iterator();
            while (it.hasNext()) {
                Orders x = it.next();
                if (x.getOrder_ID() == orderID) {
                    System.out.println(x);
                    it.remove();
                    orderService.deleteOrderByID(orderID);
                }
            }
            user.setOrders(orderList);
            userSession.setAttribute("user", user);
            System.out.println("DELETED\n\n\n\n");
        }

        if (request.getParameter("submit") != null) {
            Order_book stock = order_bookService.findByName((String) request.getParameter("stock"));
            String type = (String) request.getParameter("type");
            System.out.println(type);
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            System.out.println(quantity);
            double price = Double.parseDouble(request.getParameter("price"));
            if (type.equals("BUY")) {
                System.out.println("HELLO");
                Orders temp = new BuyOrder(user, stock, quantity, price);
                buyOrderService.addOrder(temp);
                System.out.println("added");
                buyOrderService.matchSellOrder((BuyOrder) temp);
            } else if (type == "SELL") {
                System.out.println("HELLO");
                Orders temp = new SellOrder(user, stock, quantity, price);
                sellOrderService.addOrder(temp);
                sellOrderService.matchBuyOrder((SellOrder) temp);
            }

        }

        return "dashboard";
    }
}
