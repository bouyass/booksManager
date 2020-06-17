package booksManager.com.Controllers;

import java.util.ArrayList;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;

import booksManager.com.Entities.Book;
import booksManager.com.Entities.User;
import booksManager.com.Services.register.Register;

public class BookController extends ActionSupport {

	@Autowired
	private Register registration;
	private Book book;
	
	private ArrayList<Book> booksSet;
	
	public ArrayList<Book> getBooksSet() {
		return booksSet;
	}

	public void setBooksSet(ArrayList<Book> booksSet) {
		this.booksSet = booksSet;
	}

	/* book registration errors */
	private String titleError;
	private String authorError;
	private String numeroError;
	private String referenceError;
	private String descriptionError;
	private String existError;

	public String getExistError() {
		return existError;
	}

	public void setExistError(String existError) {
		this.existError = existError;
	}

	public String getTitleError() {
		return titleError;
	}

	public void setTitleError(String titleError) {
		this.titleError = titleError;
	}

	public String getAuthorError() {
		return authorError;
	}

	public void setAuthorError(String authorError) {
		this.authorError = authorError;
	}

	public String getNumeroError() {
		return numeroError;
	}

	public void setNumeroError(String numeroError) {
		this.numeroError = numeroError;
	}

	public String getReferenceError() {
		return referenceError;
	}

	public void setReferenceError(String referenceError) {
		this.referenceError = referenceError;
	}

	public String getDescriptionError() {
		return descriptionError;
	}

	public void setDescriptionError(String descriptionError) {
		this.descriptionError = descriptionError;
	}

	public Register getRegistration() {
		return registration;
	}

	public void setRegistration(Register registration) {
		this.registration = registration;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public String execute() throws Exception {
		boolean bookFlag = true;
	
		if (this.registration.addBook(book.getTitle(), book.getCategorie(), book.getAuthor(), book.getDate_sortie(),
				book.getDescription(), book.getReference(), book.getNumero(),book.getLink()) == "true") {
			this.clearFields();
			return "success";
		} else if (this.registration.addBook(book.getTitle(), book.getCategorie(), book.getAuthor(),
				book.getDate_sortie(), book.getDescription(), book.getReference(), book.getNumero(),book.getLink()) == "false") {
			return "fail";
		} else {
			this.setExistError("An book with this reference already exists");
			return "fail";
		}
	 
	}
	
	public void validate() {
		String res = "false";
		System.out.println("je suis iciiiiiiiiiiiii");
		if (book.getAuthor().length() == 0 || book.getTitle().length() == 0) {
			addFieldError("user.mdp", "Password is too short.");
			this.setTitleError("Please enter the title and author");
			res = "true";
		} else {
			this.setTitleError("");
		}

		if (book.getReference().length() > 0) {
			Pattern pat1 = Pattern.compile("^#\\d+$");
			if (!pat1.matcher(book.getReference()).matches()) {
				addFieldError("user.mdp", "Password is too short.");
				this.setReferenceError("Reference format is wrong, expected format '#45446' ");
				res = "true";
			}

		} else {
			addFieldError("user.mdp", "Password is too short.");
			this.setReferenceError("Reference cannot be empty");
			res = "true";
		}

		if (book.getNumero().length() > 0) {
			//Pattern pat2 = Pattern.compile("[09]+");
			System.out.println("lyeees "+this.book.getNumero());
			if (!this.book.getNumero().matches("\\d+")) {
				addFieldError("user.mdp", "Password is too short.");
				this.setNumeroError("number can only contain digits");
				res = "true";
			}
		} else {
			addFieldError("user.mdp", "Password is too short.");
			this.setNumeroError("number cannot be empty");
			res = "true";
		}
		
		if (book.getLink().length() ==0) {
			addFieldError("user.mdp", "Password is too short.");
			this.setDescriptionError("Link is required");
			res = "true";
		}

		if (book.getDescription().length() < 20) {
			addFieldError("user.mdp", "Password is too short.");
			this.setDescriptionError("Description is too short please provide more informations");
			res = "true";
		}
	}
	
	public void getAllBooks() {
		this.setBooksSet(this.registration.getAllBooks());
		System.out.println("piiiiiii: "+this.booksSet.size());
	}

	
	public void clearFields() {
		this.book.setAuthor("");
		this.book.setCategorie("");
		this.book.setDescription("");
		this.book.setNumero("");
		this.book.setReference("");
		this.book.setTitle("");
	}
}
