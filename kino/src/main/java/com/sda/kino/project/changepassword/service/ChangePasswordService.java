package com.sda.kino.project.changepassword.service;

import com.sda.kino.project.changepassword.repository.ChangePasswordRepository;
import com.sda.kino.project.dto.UserDto;
import com.sda.kino.project.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ChangePasswordService {

    @Autowired
    private ChangePasswordRepository repository;

    public boolean changePassword(String login, String oldPassword, String newPassword) {
        if(!repository.getOldPassword(login).equals(oldPassword)){
            return false;
        }
        repository.updatePassword(login,newPassword);
        return true;
    }
}
