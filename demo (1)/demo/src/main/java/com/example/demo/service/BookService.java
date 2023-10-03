package com.example.demo.service;
import com.example.demo.entity.Book;
import com.example.demo.repo.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

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

    public Book updateBook(Book update) {
        return bookRepository.save(update);
    }

    public String deleteById(Integer bookId) {
        bookRepository.deleteById(bookId);
        return "Deleted successfully";
    }

    public Book findById(Integer id) {
        Optional<Book> ob = bookRepository.findById(id);
        return ob.get();
    }

    public List<Book> findByName(String str) {
        return bookRepository.findByName(str);
    }

    public Page<Book> getBookByPagination(Integer pageNumber, Integer pageSize) {
        Pageable pageable = PageRequest.of(pageNumber,pageSize);
        return bookRepository.findAll(pageable);
    }

//    public Book findByName(String name) {
//        Optional<Book> b = Optional.ofNullable(bookRepository.findByName(name));
//        return b.get();
//    }
}
