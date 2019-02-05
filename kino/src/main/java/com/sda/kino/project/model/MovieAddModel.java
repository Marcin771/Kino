package com.sda.kino.project.model;

public class MovieAddModel {
    private String title;
    private String category;
    private String dateProduction;
    private String timeDuration;
    private String description;
    private String movieCast;


    public MovieAddModel() {
    }

    public MovieAddModel(String title, String category, String dateProduction, String timeDuration, String description, String movieCast) {
        this.title = title;
        this.category = category;
        this.dateProduction = dateProduction;
        this.timeDuration = timeDuration;
        this.description = description;
        this.movieCast = movieCast;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDateProduction() {
        return dateProduction;
    }

    public void setDateProduction(String dateProduction) {
        this.dateProduction = dateProduction;
    }

    public String getTimeDuration() {
        return timeDuration;
    }

    public void setTimeDuration(String timeDuration) {
        this.timeDuration = timeDuration;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getMovieCast() {
        return movieCast;
    }

    public void setMovieCast(String movieCast) {
        this.movieCast = movieCast;
    }
}
