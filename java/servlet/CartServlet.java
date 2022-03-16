package servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import Dao.CartDaoImplement;
import Dao.ProductDaoImplement;

import dataBase.dataConnection;
import UserInterface.Cart;
import UserInterface.Product;

@WebServlet("/cart")
public class CartServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int productId=Integer.parseInt(request.getParameter("id"));
			ProductDaoImplement productDAO=new ProductDaoImplement(dataConnection.databaseConnection());
			Product product=productDAO.getProductById(productId);
			Cart cart=new Cart();
			cart.setProductId(productId);
			cart.setProductName(product.getProductName());
			cart.setCategory(product.getCategory());
			cart.setPrice(Double.parseDouble(product.getProductPrice()));
			cart.setTotalPrice(Double.parseDouble(product.getProductPrice()));
			
			CartDaoImplement cartDAO=new CartDaoImplement(dataConnection.databaseConnection());
			boolean status=cartDAO.addCart(cart);
			if(status) {
				response.sendRedirect("LoginPage.jsp?message=valid");
			}
			else {
				response.sendRedirect("LoginPage.jsp?message=invalid");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}