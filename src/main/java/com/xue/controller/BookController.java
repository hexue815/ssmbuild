package com.xue.controller;

import com.xue.pojo.Books;
import com.xue.service.BookService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {
    /*controller层调用service层*/
    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;

    /*查询全部书籍，并返回书籍展示界面*/
    @RequestMapping("/allBook")
    public String list(Model model){
        List<Books> list = bookService.queryAllBooks();

        model.addAttribute("list", list);
        return "allBook";
    }

    /*跳转到增加书籍页面*/
    @RequestMapping("/addBook")
    public String addBook(){
        return "addBookPage";
    }
    /*添加书籍*/
    @RequestMapping("/addBookHandling")
    public String addBookHandling(Books book){
        bookService.addBook(book);
        return "redirect:/book/allBook";
    }

    /*删除书籍*/
    @RequestMapping("/deleteBook")
    public String deleteBook(@RequestParam("id") int id){
        bookService.deleteBookById(id);
        return "redirect:/book/allBook";
    }

    /*跳转到更新书籍页面*/
    @RequestMapping("/updateBook")
    public String updateBook(@RequestParam("id") int id, Model model){
        Books book = bookService.queryBookById(id);
        model.addAttribute("book", book);
        return "updateBookPage";
    }
    /*更新书籍*/
    @RequestMapping("/updateBookHandling")
    public String updateBookHandling(Books book){
        bookService.updateBook(book);
        return "redirect:/book/allBook";
    }

}

















































