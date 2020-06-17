package booksManager.com.Services.register;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import booksManager.com.DAO.UserDaoImpl;
import booksManager.com.Entities.Book;

public class Register {
	
	@Autowired
	private UserDaoImpl userDaoImpl;

	public UserDaoImpl getUserDaoImpl() {
		return userDaoImpl;
	}

	public void setUserDaoImpl(UserDaoImpl userDaoImpl) {
		this.userDaoImpl = userDaoImpl;
	}
	
	public String register(String nom,String prenom,String pseudo,String email, String mdp,Date date_naissance ,String role) {
		return this.userDaoImpl.registerUser(nom, prenom, pseudo, email, mdp, date_naissance, role);
		
	}
	
	public String addBook(String title,String categorie,String author,Date date_sortie,String description,String reference,String numero,String link ) {
		return this.userDaoImpl.addBook(title, categorie, author, date_sortie, description, reference,numero,link);
	}
	
	public ArrayList<Book> getAllBooks() {
		ArrayList<Book> books = userDaoImpl.getAllBooks();
		return books;
	}
}
