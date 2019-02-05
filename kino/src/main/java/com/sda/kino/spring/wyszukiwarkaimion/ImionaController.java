package com.sda.kino.spring.wyszukiwarkaimion;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class ImionaController {
    @GetMapping(path = "/imiona")
    public ModelAndView imionaPage(@RequestParam(name = "filter") String filter){
        List<String> imiona = Imiona.dajImionaNaPodstawieFiltra(filter);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("imiona", imiona);
        modelAndView.setViewName("examples/imiona");
        return modelAndView;
    }

}
