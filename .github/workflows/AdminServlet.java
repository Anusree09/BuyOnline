import Admin;
import Product
import AdminFacade;
import ProductFacade
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.Collection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class AdminFacade extends AbstractFacade<Admin> {
    @PersistenceContext(unitName = "TrainersDirectPU")
    private EntityManager em;

    protected EntityManager getEntityManager() {
        return em;
    }

    public AdminFacade() {
        super(Admin.class);
    }
    
}

public class AdminServlet extends HttpServlet {


    Collection<Admin> admin;

    HttpSession session;

    String userPath;
    
    boolean IsAdminValid;
    
 

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        userPath = request.getServletPath();

        if (userPath.equals("/adminpage.jsp")) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            admin = adminFacade.findAll();
            for (Admin administrator : admin) {
                if ((administrator.getUsername().equals(username) & (administrator.getPassword().equals(password)))) {
                    session= request.getSession();
                    session.setAttribute("admin", administrator);
                    userPath = "/src/admin.jsp";
                    IsAdminValid = true;
                    session.setAttribute("firstrow", firstrow);
                    session.setAttribute("lastrow", lastrow);

                }
            }
            if (!IsAdminValid) {
                String info = " Wrong credentials";
                request.setAttribute("adminInfo", info);
                userPath = "/adminLogin.jsp";

            }

        }
        if (userPath.equals("/delete.jsp")) {
            PrintWriter out = response.getWriter();
            out.print("request.");
        }
        if (userPath.equals("/addProduct.jsp")) {
            String productName=(String) request.getParameter("name");
            String Stringprice=(String) request.getParameter("price");
            double dprice= Double.valueOf(Stringprice);
            BigDecimal price = new BigDecimal(dprice);
            String description=(String) request.getParameter("description");
            String StrQuantity=(String) request.getParameter("qty");
            short quantity= Short.valueOf(StrQuantity);
            String category=(String) request.getParameter("category");
            userPath = "src/admin.jsp";
             }
        
        if (userPath.equals("/navigate.jsp")) {
           int lastElement=productFacade.count();
            String nav= (String)request.getParameter("subject");
            if(nav.equals("next")){
                firstrow= firstrow+8;
                lastrow=lastrow+8;
                if (lastrow>lastElement)
                    lastrow=lastElement;
                if(firstrow>lastElement)
                    firstrow=lastElement;
                userPath = "/WEB-INF/view/admin.jsp"; 
                request.getSession().setAttribute("firstrow", firstrow);
                request.getSession().setAttribute("lastrow", lastrow);
            }
            else{
                firstrow= firstrow-8;
                int var=lastrow-8;
                if (var<lastElement)
                    lastrow=var;
                else
                    lastrow=lastElement;
                userPath = "/src/admin.jsp"; 
                request.getSession().setAttribute("firstrow", firstrow);
                request.getSession().setAttribute("lastrow", lastrow);
                
            }
            
            
        }

        try {
            request.getRequestDispatcher(userPath).forward(request, response);
        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }
}