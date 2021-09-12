package com.raymond.restapitutorial;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

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
    public ResponseEntity addStudent (@RequestBody String studentName) {
        return ResponseEntity.ok().body("Hello " + studentName);
    }
}
