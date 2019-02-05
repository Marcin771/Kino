package com.sda.kino.project.login.controller;

import com.sda.kino.project.dto.ErrorMessages;
import com.sda.kino.project.dto.UserDto;
import com.sda.kino.project.login.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class LoginController {

    @Autowired
    private LoginService loginService;

    @GetMapping(path = "/login")
    public ModelAndView loginPage(@RequestParam(name = "message", required = false) String message,
                                  HttpServletRequest request,
                                    HttpServletResponse response){
        HttpSession session = request.getSession();
        if (session.getAttribute("userLogin") != null){
            try {
                response.sendRedirect("/");
            } catch (IOException e) {
                e.printStackTrace();
            }
            return new ModelAndView();
        }
        ModelAndView modelAndView = new ModelAndView();
        if (message != null){
            modelAndView.addObject("errorMessage", ErrorMessages.valueOf(message));
        }
        modelAndView.setViewName("login");
        return modelAndView;
    }

    @PostMapping(path = "/login")
    public String login(
           @RequestParam(name = "login") String login,
           @RequestParam(name = "password") String password,
           HttpServletRequest request,
           HttpServletResponse response
    ){
        if (!validateForm(login, password)){
            return "redirect:/login?message=VALIDATION_ERROR";
        }
        UserDto userDto = loginService.login(login, password);
        if (userDto == null){
            return "redirect:/login?message=VALIDATION_ERROR";
        }
        createSession(userDto, request);
//        addCookie(response, userDto);
        return "redirect:/";
    }

    private void createSession(UserDto userDto, HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.setAttribute("userLogin", userDto.getLogin());
        session.setAttribute("userFirstName", userDto.getFirstName());
        session.setAttribute("userLastName", userDto.getLastName());
    }

    private void addCookie(HttpServletResponse response, UserDto userDto) {
        Cookie cookie = new Cookie("NOT_LOGOUT", userDto.getLogin());
        response.addCookie(cookie);
    }

    private boolean validateForm(String login, String password){
        if (StringUtils.isEmpty(login) || StringUtils.isEmpty(password)){
            return false;
        }
        return true;
    }
}
