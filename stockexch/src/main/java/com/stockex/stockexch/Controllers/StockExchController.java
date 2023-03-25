package com.stockex.stockexch.Controllers;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.stockex.stockexch.Entities.User;
import com.stockex.stockexch.Service.UserService;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class StockExchController {
    @Autowired
    private UserService userService;
    User user;
    HttpSession userSession;
    
    @GetMapping("/")
    public String home() {
        return "index"; // Here "index" is the name of jsp file
    }
    
    @RequestMapping(value="/login", method={RequestMethod.GET,RequestMethod.POST})
    public String login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
        System.out.println("loggedin" + user);
        if(request.getParameter("login") != null) {
            String email = (String) request.getParameter("user");
            String pass = (String) request.getParameter("pass");
            User user = userService.userLogin(email, pass);
            if(user != null) {
                HttpSession userSession = request.getSession(true);
                userSession.setAttribute("user", user);
                System.out.println("loggedin" + user);
                return "redirect:/";
            } else {
                return "login";
            }
        }else return "login";
    }
    
    @GetMapping("/logout")
    public String logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        userSession = request.getSession(true);
        if(userSession.getAttribute("user") == null) {
            return "index";
        } else {
            userSession.invalidate();
            System.out.println("loggedout");
            return "logout";
        }
    }
    
    @RequestMapping(value="/reg", method={RequestMethod.GET,RequestMethod.POST})
    public String reg(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
        userSession = request.getSession(true);
        if(request.getParameter("register") != null) {
            String firstName = (String) request.getParameter("firstName");
            String lastName = (String) request.getParameter("lastName");
            String address = (String) request.getParameter("address");
            String pass = (String) request.getParameter("pass");
            String email = (String) request.getParameter("email");
            // register user
            User user1;
            User userRegistered;
            try{
                user1 = new User(firstName, lastName, address, email, pass);
                userRegistered = userService.addUser(user1);
            }catch(Exception e){
                return "register";
            }
            
            
            System.out.println(userRegistered);
            if(userRegistered != null) {
                return "redirect:/login";
            } else {
                return "register";
            }
        } else return "register";
    }
    
}
