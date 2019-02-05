package com.sda.kino.project.model;

import lombok.*;

import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Builder
public class Movie {

    private Integer id;
    private String title;
    private MovieGenre movieGenre;
    private String movieDescription;
    private String yearOfMovieProduction;
    private String actors;
}

