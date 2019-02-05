package com.sda.kino.personaldata;

import java.util.LinkedList;
import java.util.Queue;

public class DataContext {
    private static Queue<String[]> dataQueue = new LinkedList<>();

    public static void addElement(String[] data) {
        dataQueue.add(data);
    }

    public static String[] pollData() {
        return dataQueue.poll();
    }
}
