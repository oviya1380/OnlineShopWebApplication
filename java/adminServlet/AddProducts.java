package adminServlet;

import java.io.File;
import java.io.IOException;



import Dao.ProductDaoImplement;

import dataBase.dataConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import UserInterface.Product;

@WebServlet("/AddProduct")
@MultipartConfig
public class AddProducts extends HttpServlet{
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String productId=request.getParameter("id");
			String productName=request.getParameter("name");
			String productPrice=request.getParameter("price");
			String category=request.getParameter("category");
			String status=request.getParameter("active");
			Part part=request.getPart("image");
			String fileName=part.getSubmittedFileName();
			
			Product product=new Product(productId,productName,productPrice,category,status,fileName);
			ProductDaoImplement productDAO=new ProductDaoImplement(dataConnection.databaseConnection());
						
			boolean productStatus=productDAO.addProduct(product);
			if(productStatus) {
				String path=getServletContext().getRealPath("")+"images";
				File file=new File(path);
				part.write(path+File.separator + fileName);
				
				response.sendRedirect("ApplicationInterface/AddProduct.jsp?message=done");
			}
			else {
				response.sendRedirect("ApplicationInterface/AddProduct.jsp?message=wrong");
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	
}