package com.example.demo.service;
import com.example.demo.entity.Book;
import com.example.demo.repo.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.List;

@Service
public class BookService {
    @Autowired
    public BookRepository bookRepository;
    public List<Book> getBooks() {
    List<Book> bl= new ArrayList<>();
    bookRepository.findAll().forEach(book -> bl.add(book));
    return bl;
    //return bookRepository.findAll();
    }

    public Book createBook(Book book) {
        return bookRepository.save(book);
    }
}
