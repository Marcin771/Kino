package com.sda.kino.project.registration.service;

import com.sda.kino.project.dto.ErrorMessages;
import com.sda.kino.project.dto.UserDto;
import com.sda.kino.project.model.User;
import com.sda.kino.project.registration.repository.RegistrationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegistrationService {

    @Autowired
    private RegistrationRepository repository;

    public void addUser(UserDto userDto){
        //Sprawdzamy login
        if (repository.isLoginExists(userDto.getLogin())){
            throw new RuntimeException(ErrorMessages.LOGIN_EXISTS.name());
        }
        //Dodajemy nowego usera do bazy
        User user = getUser(userDto);
        user = repository.save(user);
    }

    private User getUser(UserDto userDto) {
        User user = new User();
        user.setEmail(userDto.getEmail());
        user.setFirstName(userDto.getFirstName());
        user.setLastName(userDto.getLastName());
        user.setLogin(userDto.getLogin());
        user.setPassword(userDto.getPassword());
        return user;
    }
}
