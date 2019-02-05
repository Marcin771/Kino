package com.sda.kino.project.registration.repository;

import com.sda.kino.project.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class RegistrationRepository {

    private static final String IS_LOGIN_EXISTS = "SELECT true FROM users WHERE login = ?";
    private static final String INSERT_USER = "INSERT INTO users(first_name, last_name, login, password, email) VALUES (?, ?,?,?,?)";

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public boolean isLoginExists(String login){
        List<Boolean> exists = jdbcTemplate.queryForList(IS_LOGIN_EXISTS, new String[]{login}, Boolean.class);
        return !exists.isEmpty();
    }

    public User save(User user) {
        jdbcTemplate.update(INSERT_USER, new Object[]{user.getFirstName(), user.getLastName(), user.getLogin(), user.getPassword(), user.getEmail()});
        return user;
    }
}
