package com.example.demo.service;

import com.example.demo.dto.BookDto;
import com.example.demo.entity.Book;
import com.example.demo.repo.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public class BookService {
    @Autowired
    public BookRepository bookRepository;

    public List<Book> getBooks() {
        // Retrieve and return all books from the repository
        return bookRepository.findAll();
    }

    public Book updateBook(Book update) {

        return bookRepository.save(update);
    }

    public String deleteById(Integer bookId) {
        // Delete a book by its ID
        bookRepository.deleteById(bookId);
        return "Deleted successfully";
    }
    public Book findById(Integer id) {
        Optional<Book> ob = bookRepository.findById(id);
        return ob.get();
    }

    public List<Book> findByName(String str) {
        // Search for books by name
        return bookRepository.findByName(str);
    }

    public Book createBook(BookDto dto) {
        Book book = mapBookDtotoBook(dto);
        return bookRepository.save(book);
    }

    private Book mapBookDtotoBook(BookDto dto) {
        Book book = new Book();
        book.setId(dto.getId());
        book.setName(dto.getName());
        book.setName(dto.getDescription());
        book.setStatus(dto.getStatus());
        return book;
    }
    public Page<Book> getBookByPagination(Integer pageNumber, Integer pageSize) {
        Pageable pageable = PageRequest.of(pageNumber,pageSize);
        return bookRepository.findAll(pageable);
    }
}
