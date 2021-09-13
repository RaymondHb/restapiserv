package com.raymond.restapitutorial;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.io.*;
import java.util.Properties;

@RestController
public class HelloController {

    @GetMapping("/")
    public String index() {
        return "Greetings from Spring Boot!";
    }

    @GetMapping("/get/{id}")
    public ResponseEntity get(@PathVariable("id") long id) {
        return ResponseEntity.ok().body(id);
    }
    @PostMapping("/student/add")
    public ResponseEntity addStudent (@RequestParam("studentName") String studentName) {
        try (OutputStream output = new FileOutputStream("/Users/romisyahril/IdeaProjects/restapiserv/restapitutorial/src/main/resources/config.properties")) {

            Properties prop = new Properties();

            // get the property value and print it out
            prop.setProperty("student's_Name", studentName);
            System.out.println(prop.getProperty("student's_Name"));
            prop.store(output, null);

        } catch (IOException ex) {
            ex.printStackTrace();
        }
        return ResponseEntity.ok().body("Hello " + studentName);
    }
}
