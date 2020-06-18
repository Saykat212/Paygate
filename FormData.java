
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FormData
 */
@WebServlet("/FormData")
public class FormData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormData() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
	
		
		 // read form fields
        String name = request.getParameter("Name");
        String email = request.getParameter("Email");
        String phone = request.getParameter("phone");
        String amm = request.getParameter("Amount");
     
        String purpose = "Donation";
    
        System.out.println("username: " + name);
        System.out.println("password: " + email);
        System.out.println("username: " + phone);
        System.out.println("password: " +  amm);
         
        // do some processing here...
         
        // get response writer
        PrintWriter writer = response.getWriter();
         
        // build HTML code
       /* String htmlRespone = "<html>";
        htmlRespone += "<h2>Your name is: " + name + "<br/>";      
        htmlRespone += "Your email is: " + email + "</h2>";    
        htmlRespone += "<h2>Your phone is: " + phone + "<br/>";      
        htmlRespone += "Your Ammount is: " + amm + "</h2>";    
        htmlRespone += "</html>";*/
        
       Donor don=new Donor();
        don.setId(1);
        don.setName(name);
        don.setEmail(email);
        don.setPhone(phone);
        don.setAmm(amm);
       HttpSession session = request.getSession();
       session.setAttribute("amm",don.amm);
       session.setAttribute("email",don.email);
       session.setAttribute("phone",don.phone);
       session.setAttribute("name",don.name);
       
        request.setAttribute("mess", don);
        request.getRequestDispatcher("pay.jsp").forward(request, response);
        //response.sendRedirect(request.getContextPath() + "/pay.jsp");
        // return response
       // writer.println(htmlRespone);
        
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
