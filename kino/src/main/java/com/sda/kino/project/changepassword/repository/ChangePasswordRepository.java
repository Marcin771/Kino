package com.sda.kino.project.changepassword.repository;

import com.sda.kino.project.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class ChangePasswordRepository {

    private static final String GET_USER = "SELECT password FROM users WHERE login = ?";
    private static final String UPDATE_USER = "UPDATE users SET password= ? WHERE login = ?";

    @Autowired
    private JdbcTemplate template;

    public String getOldPassword(String login) {

        List<String> users = template.query(GET_USER, new String[]{login}, new RowMapper<String>() {
            @Override
            public String mapRow(ResultSet resultSet, int i) throws SQLException {
                User user = new User();
                user.setPassword(resultSet.getString("password"));
                return user.getPassword();
            }
        });
        if (users.isEmpty()) {
            return null;
        } else {
            return users.get(0);
        }
    }

    public void updatePassword(String login, String newPassword) {
        template.update(UPDATE_USER, new String[]{newPassword,login});
    }
}
