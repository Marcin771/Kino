package com.sda.kino.project.addNewMovie.repository;

import com.sda.kino.project.model.Movie;
import com.sda.kino.project.model.MovieAddModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class AddMovieRepository {

    @Autowired
    private JdbcTemplate template;

    private static final String GET_MOVIE = "SELECT true FROM movies WHERE title = ? AND date_production = ?";
    private static final String ADD_MOVIE = "INSERT INTO movies (title, category, date_production, time_duration, description, movie_cast ) values (?,?,?,?,?,?)";

    public boolean checkIfMovieExist(String title, String dateProduction) {
        List<Boolean> movies = template.queryForList (GET_MOVIE, new String[]{title, dateProduction}, Boolean.class);
        return !movies.isEmpty();
    }

    public void addNewMovie(MovieAddModel movie) {
        template.update(ADD_MOVIE,new Object[]{movie.getTitle(), movie.getCategory(), movie.getDateProduction(), Integer.parseInt(movie.getTimeDuration()), movie.getDescription(), movie.getMovieCast()} );
    }
}
