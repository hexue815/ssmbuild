package com.xue.controller;

import com.xue.pojo.Books;
import com.xue.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {
    /*controller层调用service层*/
    @Autowired
    @Qualifier("bookServiceImpl")
    private BookService bookService;

    /*查询全部书籍，并返回书籍展示界面*/
    @RequestMapping("/allBook")
    public String list(Model model){
        List<Books> list = bookService.queryAllBooks();

        model.addAttribute("list", list);
        return "allBook";
    }
}
