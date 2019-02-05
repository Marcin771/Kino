package com.sda.kino.project.addNewMovie.service;

import com.sda.kino.project.addNewMovie.repository.AddMovieRepository;
import com.sda.kino.project.dto.MovieDto;
import com.sda.kino.project.model.Movie;
import com.sda.kino.project.model.MovieAddModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AddMovieService {

    @Autowired
    AddMovieRepository addMovieRepository;


    public boolean addMovie(MovieDto movieDto) {
        if (movieDto == null){
            return false;
        }
        MovieAddModel movie = mapMovie(movieDto);
        if (!addMovieRepository.checkIfMovieExist(movie.getTitle(), movie.getDateProduction())) {
            addMovieRepository.addNewMovie(movie);
            return true;
        }else{
            return false;
        }

    }

    private MovieAddModel mapMovie(MovieDto movieDto) {
        MovieAddModel movie = new MovieAddModel();
        movie.setTitle(movieDto.getTitle());
        movie.setCategory(movieDto.getCategory());
        movie.setDateProduction(movieDto.getDateProduction());
        movie.setTimeDuration(movieDto.getTimeDuration());
        movie.setDescription(movieDto.getDescription());
        movie.setMovieCast(movieDto.getMovieCast());
        return movie;

    }
}
