import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;


public class LoginTest1 {
	WebDriver driver;
	
	@Before 
	public void testsetup(){
	System.setProperty("webdriver.chrome.driver", "C:/Users/Sarvesh/Downloads/selenium-2.53.0/selenium-2.53.0/chromedriver.exe");
	driver = new ChromeDriver();
	}
	
	@After
	public void testshutdown(){
		// driver.close();
	}
	
	@Test
	public void makepaymentlinktest() {
		
		driver.navigate().to("http://localhost:8080/Book/Login.jsp");
		driver.findElement(By.name("username")).sendKeys("test");
		driver.findElement(By.name("password")).sendKeys("incorrect_password");
		driver.findElement(By.name("action")).click();
		assertTrue("Login page is not working", driver.getCurrentUrl().contains("invalid"));
	}

}
