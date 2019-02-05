package com.sda.kino.project.changepassword.controller;

import com.sda.kino.project.changepassword.repository.ChangePasswordRepository;
import com.sda.kino.project.changepassword.service.ChangePasswordService;
import com.sda.kino.project.dto.ErrorMessages;
import com.sda.kino.project.dto.UserDto;
import com.sda.kino.project.login.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class ChangePasswordController {

    @Autowired
    private ChangePasswordService service;

    @GetMapping(path = "/change_password")
    public ModelAndView changePasswordPage(@RequestParam(name = "message", required = false) String message,
                                  HttpServletRequest request,
                                  HttpServletResponse response){
        HttpSession session = request.getSession();
        if (session.getAttribute("userLogin") == null){
            try {
                response.sendRedirect("/login");
            } catch (IOException e) {
                e.printStackTrace();
            }
            return new ModelAndView();
        }

        ModelAndView modelAndView = new ModelAndView();
        if (message != null){
            modelAndView.addObject("errorMessage", ErrorMessages.valueOf(message));
        }
        modelAndView.setViewName("change_password");
        return modelAndView;
    }


    @PostMapping(path = "/change_password")
    public String changePassword(
            @RequestParam(name = "oldPassword") String oldPassword,
            @RequestParam(name = "newPassword") String newPassword,
            @RequestParam(name = "repeatedNewPassword") String repeatedNewPassword,
            HttpServletRequest request,
            HttpServletResponse response
    ){

        HttpSession session = request.getSession();
        if(!newPassword.equals(repeatedNewPassword)){
            return "redirect:/change_password?message=VALIDATION_ERROR";
        }

        if(service.changePassword((String)session.getAttribute("userLogin"),oldPassword,newPassword)==false){
            return "redirect:/change_password?message=VALIDATION_ERROR";
        }else{
            return "redirect:/account?message=CHANGE_PASSWORD_SUCCESS";
        }
    }

}
