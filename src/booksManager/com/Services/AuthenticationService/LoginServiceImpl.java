package booksManager.com.Services.AuthenticationService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import booksManager.com.DAO.UserDaoImpl;

@Service
public class LoginServiceImpl implements LoginService{

	@Autowired
	private UserDaoImpl userDaoImpl;
	
	public void setUserDaoImpl(UserDaoImpl userDaoImpl) {
		this.userDaoImpl = userDaoImpl;
	}
	
	@Override
	public String login(String pseudo, String email) {
		String role = userDaoImpl.loginUser(pseudo, email); 
		return role;
	}

	public UserDaoImpl getUserDaoImpl() {
		return userDaoImpl;
	}

	

}
