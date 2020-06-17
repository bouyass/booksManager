package booksManager.com.Entities;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.*;

@Entity
@Table(name="book")
@SuppressWarnings("serial")
public class Book  implements Serializable {

	@Id
	@GeneratedValue
	@Column(name="idbook")
	private int id;
	
	@Column(name="title")
	private String title;
	
	@Column(name="auteur")
	private String author;
	
	@Column(name="categorie")
	private String categorie;
	
	@Column(name="date_sortie")
	private Date date_sortie;
	
	@Column(name="description")
	private String description;
	
	@Column(name="reference")
	private String reference;
	
	@Column(name="numero")
	private String numero;
	
	@Column(name="link")
	private String link;

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public String getReference() {
		return reference;
	}

	public void setReference(String reference) {
		this.reference = reference;
	}

	public int getId() {
		return id;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getCategorie() {
		return categorie;
	}

	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}

	public Date getDate_sortie() {
		return date_sortie;
	}

	public void setDate_sortie(Date date_naissance) {
		this.date_sortie = date_naissance;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	
	
	
}
