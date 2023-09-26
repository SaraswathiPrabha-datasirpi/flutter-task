package com.example.demo.controller;

import com.example.demo.entity.Book;
import com.example.demo.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


import java.util.Arrays;
import java.util.List;

@CrossOrigin
@RestController
public class BookController {
    @Autowired
    public BookService bookService;
    @RequestMapping(value = "/books",method = RequestMethod.GET)
    public List<Book> getBooks() {
        return bookService.getBooks();
    }

    @RequestMapping(value = "/books",method = RequestMethod.POST)
    public Book createBook(@RequestBody Book book){
        return bookService.createBook(book);
    }

}
