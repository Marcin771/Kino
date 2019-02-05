package com.sda.kino.personaldata;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="ShowDataServlet", urlPatterns = "/show_data")
public class ShowDataServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletOutputStream out = resp.getOutputStream();

        String[] data = DataContext.pollData();
        if (data == null){
            out.println("Kolejka jest pusta");
        }else{
            out.println(String.format("Imie: %s", data[0]));
            out.println(String.format("Nazwisko: %s", data[1]));
            out.println(String.format("Email: %s", data[2]));
        }
    }
}
