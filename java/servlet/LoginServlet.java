package servlet;

import java.io.IOException;


import Dao.UserDaoImplement;
import dataBase.dataConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import UserInterface.User;
@WebServlet("/Login")
public class LoginServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			UserDaoImplement userDAO=new UserDaoImplement(dataConnection.databaseConnection());
			HttpSession session=request.getSession();
			String userName=request.getParameter("userName");
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			if("Admin".equals(userName) && "Admin@123".equals(password) && "Admin@gmail.com".equals(email)) {
				User user=new User();
				user.setUsername("Admin");
				session.setAttribute("userName", userName);
				response.sendRedirect("ApplicationInterface/Admin.jsp");
			}else {
				User user=userDAO.login(userName, password,email);
				if(user!=null) {
					session.setAttribute("userName",userName);
					response.sendRedirect("LoginPage.jsp");
				}
				else {
					response.sendRedirect("Login.jsp?message=notexist");
				}
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}