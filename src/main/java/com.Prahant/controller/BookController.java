package com.Prahant.controller;

import com.Prahant.dao.BookDao;
import com.Prahant.modal.Book;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class BookController extends HttpServlet{
    private BookDao bookDao;
    private static String LIST_BOOK="/bookList.jsp";
    private static String INSERT_EDIT="/insert.jsp";

    public BookController(){
        super();
        bookDao=new BookDao();
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String forward="";
        String action=req.getParameter("action");

        if(action.equalsIgnoreCase("bookList")){
            forward=LIST_BOOK;
            req.setAttribute("books",bookDao.getAllBooks());

        }else if(action.equalsIgnoreCase("insert")){
            forward=INSERT_EDIT;
        }else if(action.equalsIgnoreCase("delete")){
            String del=req.getParameter("bookid");
            int bookId=Integer.parseInt(del.trim());
            bookDao.delete(bookId);
            forward=LIST_BOOK;
            req.setAttribute("books",bookDao.getAllBooks());

        }else if(action.equalsIgnoreCase("edit")){
            forward=INSERT_EDIT;
            String edit= req.getParameter("bookid");
            int bookId=Integer.parseInt(edit.trim());
            Book book=bookDao.getbyId(bookId);
            req.setAttribute("book",book);

        }

        RequestDispatcher dispatcher=req.getRequestDispatcher(forward);
        dispatcher.forward(req,resp);
    }


    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Book book=new Book();
        book.setBookName(req.getParameter("bookname"));
        book.setAuthorName(req.getParameter("authorname"));
        book.setPublicationName(req.getParameter("publicationname"));
        book.setContactEmail(req.getParameter("contactemail"));
        String bookId=req.getParameter("id");
        if(bookId==null||bookId.isEmpty()){
            bookDao.addBook(book);
        }else{
            book.setId(Integer.parseInt(bookId.trim()));
            bookDao.updateBook(book,bookId);
        }
        RequestDispatcher view =req.getRequestDispatcher(LIST_BOOK);
        req.setAttribute("books",bookDao.getAllBooks());
        view.forward(req,resp);
    }
}
