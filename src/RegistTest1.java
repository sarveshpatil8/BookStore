import static org.junit.Assert.*;

import java.util.Random;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;


public class RegistTest1 {
	WebDriver driver;
	
	@Before 
	public void testsetup(){
	System.setProperty("webdriver.chrome.driver", "C:/Users/Sarvesh/Downloads/selenium-2.53.0/selenium-2.53.0/chromedriver.exe");
	driver = new ChromeDriver();
	}
	
	@After
	public void testshutdown(){
		driver.close();
	}
	
	@Test
	public void makepaymentlinktest() {
		
		driver.navigate().to("http://localhost:8080/Book/Registration.jsp");
		driver.findElement(By.name("fname")).sendKeys("sarvesh");
		driver.findElement(By.name("lname")).sendKeys("patil");
		driver.findElement(By.name("address")).sendKeys("qwerty");
		driver.findElement(By.name("mobileno")).sendKeys("1234567890");
		driver.findElement(By.name("emailid")).sendKeys("sarvesh@gmail.com");
		driver.findElement(By.name("username")).sendKeys(userid(8));
		driver.findElement(By.name("password")).sendKeys("Qwerty@123");
		driver.findElement(By.name("cpassword")).sendKeys(password(10));
		driver.findElement(By.name("usertype")).sendKeys("User");
		driver.findElement(By.name("action")).click();
		try {
	        Alert alert = driver.switchTo().alert();
	         String message = alert.getText();
	         assertTrue("Validation is not working",message!=null);
	         System.out.println("The validation text is: "+message);
	         alert.accept();
	    } catch (Exception e) {
	    	System.out.println();
		
	}

}

	
	public static String userid(int length){
		final String data = "@0123456789abcdefghijklmnopqrstuvwxyz";
		
		Random random = new Random();
		StringBuilder sb = new StringBuilder(length);
		
		for (int i=0; i<length; i++){
			sb.append(data.charAt(random.nextInt(data.length())));
		}
		return sb.toString();
	}
	
	public static String password(int length){
		
		final String data = "@0123456789abcdefghijklmnopqrstuvwxyz";
		
		Random random = new Random();
		StringBuilder sb = new StringBuilder(length);
		
		for (int i=0; i<length; i++){
			sb.append(data.charAt(random.nextInt(data.length())));
		}
		return sb.toString();
	}	
		
		
}
