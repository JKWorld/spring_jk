

import javax.servlet.annotation.WebServlet;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

/**
 * Servlet implementation class MyDispatcher
 */
@WebServlet("*.inc")
public class MyDispatcher extends DispatcherServlet {

}
