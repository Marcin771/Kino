package com.sda.kino.spring.wyszukiwarkaimion;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class Imiona {
    private static List<String> list = new ArrayList<>();

    static {
        list.add("Kasia");
        list.add("Asia");
        list.add("Basia");
        list.add("Jarek");
        list.add("Marek");
        list.add("Kamil");
        list.add("Mateusz");
        list.add("Alicja");
    }

    public static List<String> dajImionaNaPodstawieFiltra(String filtr){
        return list.stream().filter(imie -> imie.contains(filtr)).collect(Collectors.toList());
    }
}
