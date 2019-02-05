package com.sda.kino.project.useraccount.service;

import com.sda.kino.project.dto.UserDto;
import com.sda.kino.project.model.User;
import com.sda.kino.project.useraccount.repository.UserAccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserAccountService {

    @Autowired
    private UserAccountRepository repository;
    public UserDto getUser(String login){
        User user = repository.getUser(login);
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
        userDto.setEmail(user.getEmail());
        userDto.setRegisteredDate(user.getRegisteredDate());
        return userDto;
    }
}
