package com.example.demo.controller;

import com.example.demo.entity.Book;
import com.example.demo.service.BookService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@CrossOrigin
@RestController
public class BookController {
    Logger logger= LoggerFactory.getLogger(BookController.class);
    @Autowired
    public BookService bookService;
    @RequestMapping(value = "/books",method = RequestMethod.GET)
    public List<Book> getBooks() {
        logger.info("Info message");
        logger.warn("Warn Message");
        logger.error("Error Message");
        logger.debug("Debug Message");
        logger.trace("Trace Message");
        return bookService.getBooks();
    }

    @RequestMapping(value = "/books",method = RequestMethod.POST)
    public Book createBook(@RequestBody Book book){
        return bookService.createBook(book);
    }
    @RequestMapping(value = "/books",method = RequestMethod.PUT)
    public Book updateBook(@RequestBody Book update){

        return bookService.updateBook(update);
    }
    @RequestMapping(value = "/books/{bookId}",method = RequestMethod.DELETE)
    public String deleteById(@PathVariable Integer bookId){

        return bookService.deleteById(bookId);
    }
    @RequestMapping(value = "/books/{id}",method = RequestMethod.GET)
    public Book findById(@PathVariable Integer id){
        return bookService.findById(id);
    }

    @RequestMapping(value = "/books/findByname",method = RequestMethod.GET)
    public List<Book> findByName(String str){

        return bookService.findByName(str);
    }
    @RequestMapping(value = "/pagingBooks/{pageNumber}/{pageSize}",method = RequestMethod.GET)
    public Page<Book> getBookByPagination(@RequestParam Integer pageNumber,@RequestParam Integer pageSize){
        return bookService.getBookByPagination(pageNumber,pageSize);

    }
}
