package com.sda.kino.project.dto;

import org.springframework.util.StringUtils;

public class UserDto {
    private String firstName;
    private String lastName;
    private String login;
    private String email;
    private String password;
    private String repeatedPassword;
    private String registeredDate;

    public String getRegisteredDate() {
        return registeredDate;
    }

    public void setRegisteredDate(String registeredDate) {
        this.registeredDate = registeredDate;
    }

    public boolean validateForm() {
        if (!isFieldValid(firstName)) {
            return false;
        }
        if (!isFieldValid(lastName)) {
            return false;
        }
        if (!isFieldValid(login)) {
            return false;
        }
        if (!isFieldValid(email)) {
            return false;
        }
        if (!isFieldValid(password) || !isFieldValid(repeatedPassword) || !password.equals(repeatedPassword)) {
            return false;
        }
        return true;
    }

    private boolean isFieldValid(String field) {
        if (StringUtils.isEmpty(field) || StringUtils.containsWhitespace(field)) {
            return false;
        }
        return true;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRepeatedPassword() {
        return repeatedPassword;
    }

    public void setRepeatedPassword(String repeatedPassword) {
        this.repeatedPassword = repeatedPassword;
    }
}
