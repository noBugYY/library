package com.abc.handler;

import com.abc.beans.Book;
import com.abc.beans.ClassInfo;
import com.abc.service.IBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.WebRequest;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("book")
public class BookHandler {
    @Autowired
    private IBookService bookService;

    //将字符串转换为Date类
    @InitBinder
    public void initBinder(WebDataBinder binder, WebRequest request) {
        //转换日期格式
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        //注册自定义的编辑器
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }

    @RequestMapping("findClassifiction.do")
    public String findClassifiction(Model model){
        List<ClassInfo> list = bookService.findClassifiction();
        model.addAttribute("list",list);
        return "/html/admin/admin_book_add.jsp";
    }
    //添加图书
    @RequestMapping("addBook")
    public String firstDo(Book book,Model model){
        try{
            System.out.println(book);
            bookService.addBook(book);
            model.addAttribute("info","添加成功！");
        }catch (Exception e){
            model.addAttribute("info","添加失败！");
        }
        return "/html/admin/admin_book_add.jsp";
    }
    //根据图书id删除图书
    @RequestMapping("deleteBook")
    public String secondDo(int id, Model model){
        try {
            bookService.deleteBook(id);
            model.addAttribute("message","删除成功");
        }catch (Exception e){
            model.addAttribute("message","删除失败");
        }
        return "/admin/index.jsp";
    }
    //修改图书
    @RequestMapping("editBook")
    public String thridDo(Book book, Model model){
        try{
            bookService.editBook(book);
        }catch (Exception e){
            model.addAttribute("message","修改失败");
        }
        return "/admin/index.jsp";
    }
    //查询图书
    @RequestMapping("queryBook")
    public String fourDo(Book book, Model model){
        try{
            List<Book> list = bookService.queryBook(book);
            model.addAttribute("list",list);
        }catch (Exception e) {
            model.addAttribute("message", "查询失败");
        }
        return "/admin/index.jsp";
    }
    //查询所有图书
    @RequestMapping("queryAllBook")
    public String fiveDo(Model model){
        try{
            List<Book> list = bookService.getAllBooks();
            model.addAttribute("list",list);
        }catch (Exception e) {
            model.addAttribute("message", "查询失败");
        }
        return "/admin/index.jsp";
    }
    //通过图书book_id查询图书
    public String sixDo(int book_id,Model model){
        try{
           Book book =  bookService.getBookById(book_id);
        }catch (Exception e){
            model.addAttribute("message","查询失败");
        }
        return "/admin/index.jsp";
    }
}
