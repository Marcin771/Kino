package com.sda.kino;

import java.util.Random;

public class RandomNumberGenerator {
    public static String generateLottoNumbers(){
        Random random = new Random();
        StringBuilder sb = new StringBuilder();
        for (int i=0;i<6;i++){
            sb.append(Integer.toString(random.nextInt(49)+1)+" ");
        }
        return sb.toString();
    }

    public static Integer drawHappyNumber(){
        int suma = 0;
        Random random = new Random();
        for (int i=0;i<5;i++){
            suma += random.nextInt(10);
        }
        return suma;
    }
}
