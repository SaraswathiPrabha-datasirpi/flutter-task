package com.example.metrices.project.demo.controller;

import org.springframework.web.bind.annotation.*;

@CrossOrigin(origins = "*", maxAge = 3600)
@RequestMapping(value = "/college")
@RestController
public class fetchSample {
    @GetMapping("/college")
    public String createCollege() {
        String success="hellow world!";
        return success;
    }
}