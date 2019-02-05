package com.sda.kino.project.addNewMovie.contoller;

import com.sda.kino.project.addNewMovie.service.AddMovieService;
import com.sda.kino.project.dto.ErrorMessages;
import com.sda.kino.project.dto.MovieDto;
import com.sda.kino.project.model.FilmGenre;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AddMovieContoller {

    @Autowired
    private AddMovieService addMovieService;


    @GetMapping(path = "/add_movie")
    public ModelAndView addMoviePage(@RequestParam(name = "message", required = false) String message) {

        ModelAndView modelAndView = new ModelAndView();

        modelAndView.addObject("categories", FilmGenre.values());
        if (message != null){
            modelAndView.addObject("errorMessage", ErrorMessages.valueOf(message));
        }
        modelAndView.setViewName("add_movie");
        return modelAndView;
    }

    @PostMapping(path = "/add_movie")
    public String addMovie(@ModelAttribute(name = "addMovieForm") MovieDto movieDto) {

        if (!validateForm(movieDto)) {
            return "redirect:/add_movie?message=VALIDATION_ERROR";
        }
        boolean result = addMovieService.addMovie(movieDto);
        return "redirect:/add_movie?message="+(result?"SUCCESS":"FAILURE");
    }

    private boolean validateForm(MovieDto MovieDto) {
        if (StringUtils.isEmpty(MovieDto.getTitle()) || StringUtils.isEmpty(MovieDto.getCategory())
                || StringUtils.isEmpty(MovieDto.getDateProduction())
                || StringUtils.isEmpty(MovieDto.getTimeDuration()) || StringUtils.isEmpty(MovieDto.getDescription())
                || StringUtils.isEmpty(MovieDto.getMovieCast())) {
            return false;
        }
        return true;
    }
}
