package TestCasoUnitario;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

public class TestCU_vacio {
	private WebDriver driver;
	
	  @BeforeClass
		  public void abrir_chrome() {
			    System.out.println("Caso1: Abre el navegador google chrome");
				System.setProperty("webdriver.chrome.driver", "./src/test/resources/ChromeDriver/chromedriver.exe");
				driver = new ChromeDriver();
				driver.manage().window().maximize();
				driver.get("http://localhost:8070/login/index.jsp");
		  }
	  @Test
	  public void login() {
			System.out.println("Caso2: Ingresa nombre ni password en login");
			driver.findElement(By.id("username")).sendKeys("");
			driver.findElement(By.id("password")).sendKeys("");
	  }
	  

	  @AfterClass
	  public void salir() {
		  System.out.println("Caso3: Inicia sesion");
			driver.findElement(By.id("loginBtn")).click();
			driver.quit();
	  }
}