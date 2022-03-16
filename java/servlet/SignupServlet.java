package servlet;

import java.io.IOException;


import Dao.UserDaoImplement;
import dataBase.dataConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import UserInterface.User;
@WebServlet("/Signup")
public class SignupServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String userName=request.getParameter("userName");
			String email=request.getParameter("email");
			String phoneNumber=request.getParameter("phoneNumber");
			String password=request.getParameter("password");
			String confirmPassword=request.getParameter("confirmPassword");
			//System.out.println(username+" "+email+" "+phoneNumber+" "+password+" "+repassword);
			User user=new User();
			user.setUsername(userName);
			user.setEmail(email);
			user.setPhonenumber(phoneNumber);
			user.setPassword(password);
			user.setRepassword(confirmPassword);
			
			
			UserDaoImplement userDAO=new UserDaoImplement(dataConnection.databaseConnection());
			boolean status=userDAO.userRegister(user);
			if(status) {
				response.sendRedirect("Login.jsp?message=valid");
			}
			else {
				response.sendRedirect("Signup.jsp?message=invalid");
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
}