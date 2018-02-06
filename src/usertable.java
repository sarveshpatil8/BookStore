import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Random;

import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;


public class usertable {
	public WebDriver driver = null;
	public Connection conn = null;
	public Statement statement = null;
	
	
	
	@Before 
	public void testsetup(){
	System.setProperty("webdriver.chrome.driver", "C:/Users/Sarvesh/Downloads/selenium-2.53.0/selenium-2.53.0/chromedriver.exe");
	driver = new ChromeDriver();
	}
	
	@After
	public void testshutdown(){
		
		if(conn!=null){
			conn=null;
		}
		//driver.close();
	}
	
	@Test
	public void makepaymentlinktest() {
		
		driver.navigate().to("http://localhost:8080/Book/Registration.jsp");
		driver.findElement(By.name("fname")).sendKeys("sarvesh");
		driver.findElement(By.name("lname")).sendKeys("patil");
		driver.findElement(By.name("address")).sendKeys("qwerty");
		driver.findElement(By.name("mobileno")).sendKeys("1234567890");
		driver.findElement(By.name("emailid")).sendKeys("sarvesh@gmail.com");
		String user = userid(8);
		driver.findElement(By.name("username")).sendKeys(user);
		driver.findElement(By.name("password")).sendKeys("Qwerty@123");
		driver.findElement(By.name("cpassword")).sendKeys("Qwerty@123");
		driver.findElement(By.name("usertype")).sendKeys("User");
		driver.findElement(By.name("action")).click();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver Loaded...");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookstore","root","");
			System.out.println("Connection Established...");	
			String querry = "select UserId from usertable";
			statement = conn.createStatement();
			ResultSet resultset = statement.executeQuery(querry);
			
			while(resultset.next()){
				System.out.println(resultset.getString("UserId"));
				if(user==resultset.getString("UserId")){
					assertTrue("Value are not equal",user==resultset.getString("UserId"));	
				
				}
			}
			
	    } 
			catch (Exception e) {
				System.out.println(e);

	    }
		
		//System.out.println(driver.getCurrentUrl());
		Assert.assertTrue("No such field is found",false);

	}
		
	public static String userid(int length){
		final String data = "0123456789abcdefghijklmnopqrstuvwxyz";
		
		Random random = new Random();
		StringBuilder sb = new StringBuilder(length);
		
		for (int i=0; i<length; i++){
			sb.append(data.charAt(random.nextInt(data.length())));
		}
		return sb.toString();
	}
}
