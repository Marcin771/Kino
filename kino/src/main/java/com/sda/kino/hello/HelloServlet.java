package com.sda.kino.hello;


import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.util.Enumeration;

@WebServlet(name = "HomeServlet", urlPatterns = "/hello_annotation")
public class HelloServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        ServletOutputStream out = response.getOutputStream();
//        out.println("ADRES URL: "+request.getRequestURI());
//        out.println("Hello Servlet");
//        out.println("Dzisiejsza data: "+ LocalDate.now());
//        out.println(String.format("Jakis tekst powiazany ze zmiennymi %s, %d, %b", "ala", 29384, true));
//        out.println("METODA: "+request.getMethod());
//        out.println("Naglowki");
//        Enumeration<String> headerNames = request.getHeaderNames();
//        while(headerNames.hasMoreElements()){
//            String header = headerNames.nextElement();
//            out.println(header +": "+request.getHeader(header));
//        }
//
//        String param1 = request.getParameter("param1");
//        String[] param1Values = request.getParameterValues("param1");
//        for (String name : param1Values){
//            out.println("Imie: "+name);
//        }
//        String param2 = request.getParameter("param2");
//        String param3 = request.getParameter("param3");
//        out.println(String.format("Wartosci parametrow: %s, %s, %s", param1, param2, param3));
//
//        Enumeration<String> parameterNames = request.getParameterNames();
//        while(parameterNames.hasMoreElements()){
//            String parameter = parameterNames.nextElement();
//            out.println(parameter +": "+request.getParameter(parameter));
//        }

        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
