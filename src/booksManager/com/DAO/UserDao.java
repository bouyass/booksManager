package booksManager.com.DAO;

import java.sql.Date;
import java.util.List;

import booksManager.com.Entities.Book;

public interface UserDao {
	public String loginUser(String pseudo, String password);
	public String registerUser(String nom,String prenom,String pseudo,String email, String mdp,Date date_naissance ,String role);
	public String addBook(String title,String categorie,String author,Date date_sortie,String description,String reference,String numero,String link);
	public List<Book> getAllBooks();
}
