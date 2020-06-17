package booksManager.com.Test;



import static org.junit.Assert.*;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;


public class GeneralTest {
	
	private WebDriver driver;
	
	public WebDriver getDriver() {
		return driver;
	}

	public void setDriver(WebDriver driver) {
		this.driver = driver;
	}
	
	public  void initDriver() {
		System.setProperty("webdriver.gecko.driver", "C:\\Users/lyesm/Downloads/geckodriver-v0.26.0-win64/geckodriver.exe");
		this.setDriver(new FirefoxDriver());
	}

	@Test
	public void testLogin(String pseudo, String password) {
		boolean passed = false;
		driver.get("http://127.0.0.1:8080/booksManager");
		driver.findElement(By.id("lyes")).click();
		driver.findElement(By.name("email")).sendKeys(pseudo);
		driver.findElement(By.name("password")).sendKeys(password);
		driver.findElement(By.name("submit")).click();
		String currentURL = driver.getCurrentUrl();
		//assertEquals(currentURL,"http://127.0.0.1:8080/booksManager/Views/index.jsp");
		System.out.println(driver.getCurrentUrl().equals("http://127.0.0.1:8080/booksManager/Views/index.jsp"));
	}
	
	
	public static void main(String[] args) {
		GeneralTest gt = new GeneralTest();
		gt.initDriver();
		gt.testLogin("lyes", "root");
	}

}
