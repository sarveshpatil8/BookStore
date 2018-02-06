package com.book.dao;
import java.util.List;

import com.book.pojo.Book;
public interface BookInt {

public boolean addData(Book b);
public boolean updateData(Book b);
public boolean deleteData(int id);
public List getAllData();
public List getAllDataId(int id);
public List getAllCatBook(String catname);
public List getAllAuthors();
public List getAllBook(String author);
}
