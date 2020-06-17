package booksManager.com.DAO;

import java.sql.Date;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.engine.transaction.spi.LocalStatus;
import org.springframework.stereotype.Repository;

import antlr.collections.List;
import booksManager.com.Entities.Book;
import booksManager.com.Entities.User;

@Repository("UserDao")
public class UserDaoImpl implements UserDao {

	@Resource(name="SessionFactory")
	private SessionFactory sessionFactory;
	
	
	public Session getSession() {
		Session session=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession(); 
		return session;
	}
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


	@Override
	public String loginUser(String pseudo, String email) {
		Session session = this.getSession();
		String SQL_QUERY =" from User as o where o.pseudo=? and o.mdp=?";
		Query query = session.createQuery(SQL_QUERY);
		query.setParameter(0,pseudo);
		query.setParameter(1,email);
		ArrayList list = (ArrayList) query.list();
		session.close();
		if (list.size() > 0) {
			User user = (User) list.get(0);
			return user.getRole();
		}else {
			return "null";
		}
	}

	@Override
	public String registerUser(String nom,String prenom,String pseudo,String email, String mdp,Date date_naissance ,String role){
		Session session = this.getSession();
		session.beginTransaction();
		
		boolean successful = false;
		
		User user = new User();		
		user.setDate_naissance(date_naissance);
		user.setEmail(email);
		user.setNom(nom);
		user.setMdp(mdp);
		user.setPrenom(prenom);
		user.setPseudo(pseudo);
		user.setRole(role);
		try { 
			session.save(user);
	        session.getTransaction().commit();  
	        successful = true;  
	        System.out.println("user registered");
	    } catch (HibernateException r) {  
	    	if (r.getCause() instanceof org.hibernate.exception.ConstraintViolationException) {
	    		System.out.println("user already exist");
	    		return "exist";
	    	}
	    	successful = false;
	    } finally {  
	        session.close();  
	        session = null;  
	    }
		
		if (successful) {
			return "true";
		}else{
			return "false";
		}
		
	}
	
	public String addBook(String title,String categorie,String author,Date date_sortie,String description,String reference,String numero,String link ) {
		Session session = this.getSession();
		session.beginTransaction();
		boolean successful1 = false;
		Book book = new Book();
		book.setAuthor(author);
		book.setCategorie(categorie);
		book.setDate_sortie(date_sortie);
		book.setDescription(description);
		book.setTitle(title);
		book.setReference(reference);
		book.setNumero(numero);
		book.setLink(link);
		
		try {
			session.save(book);
			session.getTransaction().commit();
			successful1 = true;
		}catch(HibernateException hex) {
			if (hex.getCause() instanceof org.hibernate.exception.ConstraintViolationException) {
	    		System.out.println("an other book with this reference exist already exist");
	    		return "exist";
	    	}
		}finally {
			session.close();
			session = null;
		}
		if (successful1) {
			return "true";
		}else
			return "false";
	}

	@Override
	public java.util.ArrayList<Book> getAllBooks() {
		Session session = this.getSession();
		String allBooks =" from Book";
		Query query1 = session.createQuery(allBooks);
		ArrayList list = (ArrayList) query1.list();
		session.close();
		if(list.size() > 0) {
			return list;
		}else {
			return null;
		}
		
	}
	
	
	

}
