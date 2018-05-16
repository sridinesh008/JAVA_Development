package samplePkg;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class firstScript {

	public static void main(String[] args) {
		
			
		System.setProperty("webdriver.chrome.driver","D:\\Development_testing\\lib\\Latest\\chromedriver_win32\\chromedriver.exe");
			WebDriver driver= new ChromeDriver();
			driver.get("https://www.google.com");
			System.out.println(driver.getTitle());
		

	}

}
