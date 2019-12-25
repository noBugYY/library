
package com.abc.service;

import com.abc.beans.Book;
import com.abc.beans.ClassInfo;
import com.abc.dao.IBookDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookServiceImpl implements IBookService{
    @Autowired
    private IBookDao bookDao;
    @Override
    public void addBook(Book book) {
        bookDao.addBook(book);
    }

    @Override
    public void deleteBook(int id) {
        bookDao.deleteBook(id);
    }

    @Override
    public void editBook(Book book) {
        bookDao.editBook(book);
    }

    @Override
    public List<Book> queryBook(Book book) {
        List<Book> list = bookDao.queryBook(book);
        return list;
    }

    @Override
    public List<Book> getAllBooks() {
        List<Book> list = bookDao.getAllBooks();
        return list;
    }

    @Override
    public Book getBookById(int book_id) {
        Book book = bookDao.getBookById(book_id);
        return book;
    }

    @Override
    public List<ClassInfo> findClassifiction() {
        List<ClassInfo> list = bookDao.findClassifiction();
        return list;
    }
}
