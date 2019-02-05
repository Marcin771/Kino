package com.sda.kino.project.reservation.dto;


import com.sda.kino.project.model.MovieGenre;
import com.sda.kino.project.model.Seance;
import lombok.*;

import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Builder
public class MovieDto {

    private Integer id;
    private String title;
    private MovieGenre movieGenre;
    private String movieDescription;
    private String yearOfMovieProduction;
    private String actors;
    private List<Seance> listOfSeance;
}
