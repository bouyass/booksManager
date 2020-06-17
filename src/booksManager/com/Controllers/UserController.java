package booksManager.com.Controllers;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;

import booksManager.com.Entities.User;
import booksManager.com.Services.register.Register;

public class UserController extends ActionSupport {

	@Autowired
	private Register registration;
	private User user;

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

	private String nameError;
	private String emailError;
	private String pseudoError;
	private String passwordError;
	private String date_naissanceError;
	private String roleError;
	private String existError;

	public String getNameError() {
		return nameError;
	}

	public void setNameError(String nameError) {
		this.nameError = nameError;
	}

	public String getEmailError() {
		return emailError;
	}

	public void setEmailError(String emailError) {
		this.emailError = emailError;
	}

	public String getPseudoError() {
		return pseudoError;
	}

	public void setPseudoError(String pseudoError) {
		this.pseudoError = pseudoError;
	}

	public String getPasswordError() {
		return passwordError;
	}

	public void setPasswordError(String passwordError) {
		this.passwordError = passwordError;
	}

	public String getDate_naissanceError() {
		return date_naissanceError;
	}

	public void setDate_naissanceError(String date_naissanceError) {
		this.date_naissanceError = date_naissanceError;
	}

	public String getRoleError() {
		return roleError;
	}

	public void setRoleError(String roleError) {
		this.roleError = roleError;
	}

	public String getExistError() {
		return existError;
	}

	public void setExistError(String existError) {
		this.existError = existError;
	}

	public String execute() throws Exception {
		if (this.registration.register(user.getNom(), user.getPrenom(), user.getPseudo(), user.getEmail(),
				user.getMdp(), user.getDate_naissance(), user.getRole()) == "true") {
			this.clearFields();
			return "success";
		} else if (this.registration.register(user.getNom(), user.getPrenom(), user.getPseudo(), user.getEmail(),
				user.getMdp(), user.getDate_naissance(), user.getRole()) == "false") {
			return "fail";
		} else {
			this.setExistError("This address mail is already in use, please log in if it's yours");
			return "fail";
		}
	}

	public void validate() {
		System.out.println("je suis laaaaa");
		this.setExistError("");
		if (this.user.getNom().length() == 0 || this.user.getPrenom().length() == 0) {
			addFieldError("user.nom", "Pseudo is too short.");
			this.setNameError("First and second name are required");
		} else {
			this.setNameError("");
		}
		if (user.getPseudo().length() < 4) {
			addFieldError("user.pseudo", "Pseudo is too short.");
			this.setPseudoError("Wrong pseudo or password");
		} else {
			this.setPseudoError("");
		}

		if (user.getMdp().length() < 4) {
			this.setPasswordError("Password is too short");
			addFieldError("user.mdp", "Wrong pseudo or password.");
		} else {
			this.setPasswordError("");
		}

		if (user.getEmail().length() > 0) {
			String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\." + "[a-zA-Z0-9_+&*-]+)*@" + "(?:[a-zA-Z0-9-]+\\.)+[a-z"
					+ "A-Z]{2,7}$";

			Pattern pat = Pattern.compile(emailRegex);
			if (!pat.matcher(user.getEmail()).matches()) {
				this.setEmailError("Wrong email provided");
			}

		} else {
			this.setEmailError("Wrong email provided");
		}

		if (user.getDate_naissance() != null) {
			DateFormat format = new SimpleDateFormat("dd/MM/yyyy");
			try {
				format.parse(user.getDate_naissance().toString());
			} catch (ParseException pex) {
				pex.printStackTrace();
			}
		} else {
			this.setDate_naissanceError("Wrong birth day provided");
		}

		if (user.getRole().length() > 10) {
			this.setRoleError("Choose role and birthday for this user");
		}

	}

	public void clearFields() {
		this.user.setEmail("");
		this.user.setMdp("");
		this.user.setNom("");
		this.user.setPrenom("");
		this.user.setPseudo("");
		this.user.setRole("");
	}

}
