package com.sda.kino.project.useraccount.controller;

import com.sda.kino.project.dto.ErrorMessages;
import com.sda.kino.project.dto.UserDto;
import com.sda.kino.project.useraccount.service.UserAccountService;
import org.hibernate.validator.constraints.SafeHtml;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class UserAccountController {

    @Autowired
    private UserAccountService service;

    @GetMapping(path = "/account")
    public ModelAndView accountPage(@RequestParam(name = "message", required = false) String message,
                                    HttpServletRequest request,
                                  HttpServletResponse response){
        HttpSession session = request.getSession();
        if (session.getAttribute("userLogin") == null) {
            try {
                response.sendRedirect("/login");
            } catch (IOException e) {
                e.printStackTrace();
            }
            return new ModelAndView();
        }
        UserDto userDto=service.getUser((String) session.getAttribute("userLogin"));

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("user",userDto);
        if (message != null){
            modelAndView.addObject("errorMessage", ErrorMessages.valueOf(message));
        }
        modelAndView.setViewName("account");
        return modelAndView;
    }
}
