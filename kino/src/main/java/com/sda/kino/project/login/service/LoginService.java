package com.sda.kino.project.login.service;

import com.sda.kino.project.dto.UserDto;
import com.sda.kino.project.login.repository.LoginRepository;
import com.sda.kino.project.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService {

    @Autowired
    private LoginRepository repository;

    public UserDto login(String login, String password){
        User user = repository.getUser(login, password);
        UserDto userDto = mapUser(user);
        return userDto;
    }

    private UserDto mapUser(User user) {
        if (user == null){
            return null;
        }
        UserDto userDto = new UserDto();
        userDto.setFirstName(user.getFirstName());
        userDto.setLastName(user.getLastName());
        userDto.setLogin(user.getLogin());
        return userDto;
    }
}
