package booksManager.com.Controllers;

import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;

import booksManager.com.Entities.Book;
import booksManager.com.Entities.User;
import booksManager.com.Services.register.Register;

public class AdminController extends ActionSupport {

	@Autowired
	private Register registration;
	private User user;
	private Book book;
	
	private ArrayList<Book> booksSet;

	
	
	public String getAllBooks() {
		this.setBooksSet(this.registration.getAllBooks());
		System.out.println("piiiiiii: "+this.booksSet.size());
		return "success";
	}



	public Register getRegistration() {
		return registration;
	}



	public void setRegistration(Register registration) {
		this.registration = registration;
	}



	public User getUser() {
		return user;
	}



	public void setUser(User user) {
		this.user = user;
	}



	public Book getBook() {
		return book;
	}



	public void setBook(Book book) {
		this.book = book;
	}



	public ArrayList<Book> getBooksSet() {
		return booksSet;
	}



	public void setBooksSet(ArrayList<Book> booksSet) {
		this.booksSet = booksSet;
	}
	
	



}
