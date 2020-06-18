import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class MailApp extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String to = request.getParameter("to");
        String subject = request.getParameter("subject");
        String message =  request.getParameter("message");
        String user = request.getParameter("user");        
        String pass = request.getParameter("pass");
        
        user="saykatmaji919@gmail.com";
        to="saykatmaji919@gmail.com";
        pass="28701702Sm";
        
       // SendMail.send(to,subject, message, user, pass);
        out.println("Mail send successfully");
    }   
}