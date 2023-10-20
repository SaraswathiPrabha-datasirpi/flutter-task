package com.example.demo.controller;

import com.example.demo.dto.BookDto;
import com.example.demo.entity.Book;
import com.example.demo.repo.BookRepository;
import com.example.demo.service.BookService;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;

@CrossOrigin
@RestController
public class BookController {
    Logger logger= LoggerFactory.getLogger(BookController.class);
    public final BookRepository bookRepository;

    @Autowired
    public BookService bookService;

    public BookController(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

//    @GetMapping("/generate")
//    public ResponseEntity<byte[]> generateAndDownloadPdf()throws DocumentException{
//        try {
//
//            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
//
//            Document document = new Document();
//            PdfWriter.getInstance(document, byteArrayOutputStream);
//            document.open();
//
//            for (Book book : bookService.getBooks()) {
//                document.add(new Paragraph("Book details"));
//                document.add(new Paragraph("________"));
//                document.add(new Paragraph("Name: " + book.getName()));
//                document.add(new Paragraph("Description: " + book.getDescription()));
//                document.add(new Paragraph("Status: " + book.getStatus()));
//                document.add(new Paragraph("--------------------------------"));
//                int i = 2/0;
//            }
//
//
//            document.close();
//
//            HttpHeaders headers = new HttpHeaders();
//            headers.setContentType(MediaType.APPLICATION_PDF);
//            headers.setContentDispositionFormData("filename", "generated.pdf");
//            //headers.add("Custom-Header", "Custom Value");
//            return ResponseEntity
//                    .ok()
//                    .headers(headers)
//                    .body(byteArrayOutputStream.toByteArray());
//        } catch (ArithmeticException e) {
//            e.printStackTrace();
//
//            return ResponseEntity
//                    .status(HttpStatus.INTERNAL_SERVER_ERROR)
//                    .body("Failed to generate PDF.".getBytes());
//        }
//    }

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
    public ResponseEntity<Object> createBook(@RequestBody @Validated BookDto dto){
        Book savedBookDetails = bookService.createBook(dto);
        logger.info("Post api info");
        return ResponseEntity.status(HttpStatus.CREATED).body(savedBookDetails);
    }
    @RequestMapping(value = "/books",method = RequestMethod.PUT)
    public Book updateBook(@RequestBody Book update){
        logger.info("Put api info");
        return bookService.updateBook(update);
    }
    @RequestMapping(value = "/books/{bookId}",method = RequestMethod.DELETE)
    public String deleteById(@PathVariable Integer bookId){
        logger.info("Delete api info");
        return bookService.deleteById(bookId);
    }
    @RequestMapping(value = "/books/{id}",method = RequestMethod.GET)
    public Book findById(@PathVariable Integer id){
        return bookService.findById(id);
    }

    @RequestMapping(value = "/books/findByname",method = RequestMethod.GET)
    public List<Book> findByName(String str){
        logger.info("Get api to get particular name");
        return bookService.findByName(str);
    }
    @RequestMapping(value = "/pagingBooks/{pageNumber}/{pageSize}",method = RequestMethod.GET)
    public Page<Book> getBookByPagination(@RequestParam Integer pageNumber, @RequestParam Integer pageSize){
        logger.info("Pagination info");
        return bookService.getBookByPagination(pageNumber,pageSize);
    }
    @GetMapping("/generate")
    public ResponseEntity<String> exampleEndpoint(
            @RequestParam("pageNumber") String requestParam,
            @RequestHeader("customHeader") String customHeader) {

        HttpHeaders responseHeaders = new HttpHeaders();
        responseHeaders.add("X-Custom-Header", "HeaderParam");
        String response = "pageNumber: " + requestParam + "\n" +
                "Custom Header: " + customHeader;

        return ResponseEntity.ok()
                .headers(responseHeaders)
                .body(response);
    }
}
