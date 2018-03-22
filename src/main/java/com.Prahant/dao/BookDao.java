package com.Prahant.dao;

import com.Prahant.modal.Book;
import com.Prahant.util.DButil;

import javax.swing.plaf.nimbus.State;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class BookDao {
    public Connection connection;
    public BookDao(){
        connection= DButil.getConnection();
    }
    public List<Book> getAllBooks() {
        List<Book> books=new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(
                    "SELECT * FROM books");
            while(resultSet.next()){
                Book book=new Book();
                book.setId(resultSet.getInt("id"));
                book.setBookName(resultSet.getString("bookName"));
                book.setAuthorName(resultSet.getString("authorName"));
                book.setPublicationName(resultSet.getString("publicationName"));
                book.setContactEmail(resultSet.getString("contactEmail"));
                books.add(book);

            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return books;
    }

    public void addBook(Book book) {
        try{

            Statement statement=connection.createStatement();
            statement.executeUpdate("INSERT INTO `Books`.`books` \n" +
                    "\t(`bookName`, \n" +
                    "\t`authorName`, \n" +
                    "\t`publicationName`, \n" +
                    "\t`contactEmail`\n" +
                    "\t)\n" +
                    "\tVALUES\n" +
                    "\t('"+book.getBookName()+"', \n" +
                    "\t'"+book.getAuthorName()+"', \n" +
                    "\t'"+book.getPublicationName()+"', \n" +
                    "\t'"+book.getContactEmail()+"'\n" +
                    "\t);\n");

        }catch (SQLException e){
            e.printStackTrace();
        }
    }

    public void delete(int bookId) {
        try{
            Statement statement=connection.createStatement();
            statement.executeUpdate("DELETE FROM books WHERE id="+bookId);

        }catch(SQLException e){
            e.printStackTrace();
        }
    }


    public Book getbyId(int bookId) {
        Book book=new Book();
        try{
            Statement statement=connection.createStatement();
            ResultSet resultSet=statement.executeQuery("SELECT * FROM books where id="+bookId);
            if(resultSet.next()){
                book.setId(resultSet.getInt("id"));
                book.setBookName(resultSet.getString("bookName"));
                book.setAuthorName(resultSet.getString("authorName"));
                book.setPublicationName(resultSet.getString("publicationName"));
                book.setContactEmail(resultSet.getString("contactEmail"));
            }

        }catch (SQLException e){
            e.printStackTrace();
        }
        return book;
    }

    public void updateBook(Book book, String bookId) {
        try {
            Statement statement=connection.createStatement();
            statement.executeUpdate("UPDATE `Books`.`books` \n" +
                    "\tSET\n" +
                    "\t`bookName` = '"+book.getBookName()+"', \n" +
                    "\t`authorName` = '"+book.getAuthorName()+"', \n" +
                    "\t`publicationName` = '"+book.getPublicationName()+"', \n" +
                    "\t`contactEmail` = '"+book.getContactEmail()+"'\n" +
                    "\t\n" +
                    "\tWHERE\n" +
                    "\t`id` = '"+Integer.parseInt(bookId)+"' ;\n");

        }catch (SQLException e){
            e.printStackTrace();
        }
    }
}
