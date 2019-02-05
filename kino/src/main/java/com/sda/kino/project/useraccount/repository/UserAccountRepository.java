package com.sda.kino.project.useraccount.repository;

import com.sda.kino.project.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class UserAccountRepository {


    @Autowired
    private JdbcTemplate template;

    private static final String GET_USER = "SELECT first_name, last_name, login, email, registered_date FROM users WHERE login = ?";


    public User getUser(String login) {
        List<User> users = template.query(GET_USER, new String[]{login}, new RowMapper<User>() {
            @Override
            public User mapRow(ResultSet resultSet, int i) throws SQLException {
                User user = new User();
                user.setFirstName(resultSet.getString("first_name"));
                user.setLastName(resultSet.getString("last_name"));
                user.setLogin(resultSet.getString("login"));
                user.setEmail(resultSet.getString("email"));
                user.setRegisteredDate(resultSet.getString("registered_date"));
                return user;
            }
        });
        if (users.isEmpty()) {
            return null;
        } else {
            return users.get(0);
        }
    }
}
