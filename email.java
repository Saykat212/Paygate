

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.*;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class email
 */
@WebServlet("/email")
public class email extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public email() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 PrintWriter out = response.getWriter();
         String amm = request.getSession().getAttribute("amm").toString();
         String email = request.getSession().getAttribute("email").toString();
         String phone = request.getSession().getAttribute("phone").toString();
         String name = request.getSession().getAttribute("name").toString();
         
         String subject;
         String message;
         String user;
         String to;
         String pass;
         subject="Reciept";
         message= name+",  Thank You For Donation, Your Payment Id is PAY87625439WE and Amount Rs "+amm+" Donated to SAI NGO Group";
         user="saykatmaji919@gmail.com";
         to=email;
         pass="28701702Sm";
         
         SendMail.send(to,subject, message, user, pass);
         out.println("Mail send successfully");
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
        request.getRequestDispatcher("rec.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
