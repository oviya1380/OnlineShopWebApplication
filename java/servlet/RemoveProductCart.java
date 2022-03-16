package servlet;

import java.io.IOException;

import Dao.CartDaoImplement;
import dataBase.dataConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/RemoveProductCart")
public class RemoveProductCart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int productId=Integer.parseInt(request.getParameter("productId"));
		CartDaoImplement cartDAO=new CartDaoImplement(dataConnection.databaseConnection());
		boolean status=cartDAO.deleteProduct(productId);
		if(status) {
			response.sendRedirect("checkout.jsp?message=valid");
		}
		else {
			response.sendRedirect("checkout.jsp?message=invalid");
		}
	}
	
	
	
}