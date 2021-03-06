package com.abc.service;

import com.abc.beans.Book;
import com.abc.beans.ClassInfo;

import java.util.List;

public interface IBookService {

    void addBook(Book book);

    void deleteBook(int id);

    void editBook(Book book);

    List<Book> queryBook(Book book);

    List<Book> getAllBooks();

    Book getBookById(int book_id);

    List<ClassInfo> findClassifiction();
}
