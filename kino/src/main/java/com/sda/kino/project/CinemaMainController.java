package com.sda.kino.project;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class CinemaMainController {

    @GetMapping(path = "/")
    public ModelAndView homePage(HttpServletRequest request){
        HttpSession session = request.getSession();
        ModelAndView modelAndView = new ModelAndView();
        if (session.getAttribute("userLogin") != null){
            modelAndView.addObject("USERNAME", session.getAttribute("userFirstName") + " " + session.getAttribute("userLastName"));
        }else{
            Cookie[] cookies = request.getCookies();
//            for (Cookie cookie : cookies){
//                if (cookie.getName().equals("NOT_LOGOUT")){
//                    String login = cookie.getValue();
//                    //TODO pobranie usera z bazy danych
//                    session.setAttribute("userLogin", login);
//                    session.setAttribute("userFirstName", "Jan");
//                    session.setAttribute("userLastName", "Kowalski");
//                    modelAndView.addObject("USERNAME", session.getAttribute("userFirstName") + " " + session.getAttribute("userLastName"));
//                    break;
//                }
//            }
        }
        modelAndView.setViewName("index");
        return modelAndView;
    }
}
