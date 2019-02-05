package com.sda.kino.project.model;

public enum FilmGenre {
    ACTION("Akcja"), ADVENTURE("Przygodowy"), COMEDY("Komedia"), CRIME("Kryminalny"), DRAMA("Dramat"), FANTASY("Fantastyczny"), HISTORICAL("Historyczny");
    private String friendlyName;

    public String getFriendlyName() {
        return friendlyName;
    }

    FilmGenre(String friendlyName) {
        this.friendlyName = friendlyName;
    }
}
