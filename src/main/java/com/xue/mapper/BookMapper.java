package com.xue.mapper;

import com.xue.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookMapper {
    int addBook(Books books);

    int deleteBookById(@Param("id") int id);

    int updateBook(Books books);

    Books queryBookById(@Param("id") int id);

    List<Books> queryAllBooks();

}
