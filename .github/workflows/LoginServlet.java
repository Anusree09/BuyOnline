import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "LoginServlet", urlPatterns = {"/login.jsp", "/logout.jsp"})
public class LoginServlet extends HttpServlet {
  
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String userPath = request.getServletPath();
     
        String url = "/home.jsp";
        if (userPath.equals("/login.jsp")) {
            url = "src/login.jsp";
        } 
        else if (userPath.equals("/logout.jsp")) {
            session.invalidate();
        }
        
        if (userPath.equals("/account.jsp")) {
            url = "src/login.jsp";
        }
        try {
            request.getRequestDispatcher(url).forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

}