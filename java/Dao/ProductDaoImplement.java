package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import UserInterface.Product;

public class ProductDaoImplement implements ProductDao{
	
	private Connection connection;

	public ProductDaoImplement(Connection connection) {
		super();
		this.connection = connection;
	}

	public boolean addProduct(Product product) {
		boolean status=false;
		try {
			String sql="insert into product(id,name,price,category,active,image) values(?,?,?,?,?,?)";
			PreparedStatement preparestatement=connection.prepareStatement(sql);
			preparestatement.setString(1,product.getProductId());
			preparestatement.setString(2,product.getProductName());
			preparestatement.setString(3,product.getProductPrice());
			preparestatement.setString(4,product.getCategory());
			preparestatement.setString(5,product.getStatus());
			preparestatement.setString(6,product.getProductImage());
			
			int index=preparestatement.executeUpdate();
			if(index==1) {
				status=true;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public List<Product> getAllProduct() {
		List<Product> list=new ArrayList<Product>();
		Product product=null;
		try {
			String sql="select * from product";
			PreparedStatement prepareStatement=connection.prepareStatement(sql);
			ResultSet resultSet=prepareStatement.executeQuery();
			while(resultSet.next()) {
				product=new Product();
				product.setProductId(resultSet.getString(1));
				product.setProductName(resultSet.getString(2));
				product.setProductPrice(resultSet.getString(3));
				product.setCategory(resultSet.getString(4));
				product.setStatus(resultSet.getString(5));
				product.setProductImage(resultSet.getString(6));
				list.add(product);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public Product getProductById(int id) {
		Product product=null;
		try {
			String sql="select * from product where id=?";
			PreparedStatement prepareStatement=connection.prepareStatement(sql);
			prepareStatement.setInt(1, id);
			ResultSet resultSet=prepareStatement.executeQuery();
			while(resultSet.next()) {
				product=new Product();
				product.setProductId(resultSet.getString(1));
				product.setProductName(resultSet.getString(2));
				product.setProductPrice(resultSet.getString(3));
				product.setCategory(resultSet.getString(4));
				product.setStatus(resultSet.getString(5));
				product.setProductImage(resultSet.getString(6));
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return product;
	}

	public boolean updateEditProduct(Product product) {
		boolean status=false;
		try {
			String sql="update product set name=?,price=?,active=? where id=?";
			PreparedStatement prepareStatement=connection.prepareStatement(sql);
			
			prepareStatement.setString(1,product.getProductName());
			prepareStatement.setString(2, product.getProductPrice());
			prepareStatement.setString(3, product.getStatus());
			prepareStatement.setString(4, product.getProductId());
			int index=prepareStatement.executeUpdate();
			if(index==1) {
				status=true;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public boolean deleteProduct(int id) {
		boolean status=false;
		try {
			String sql="delete from product where id=?";
			PreparedStatement prepareStatement=connection.prepareStatement(sql);
			prepareStatement.setInt(1,id);
			int index=prepareStatement.executeUpdate();
			if(index==1) {
				status=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public List<Product> getVegetablesProduct() {
		List<Product> list=new ArrayList<Product>();
		Product product=null;
		try {
			String sql="select * from product where category=? and active=? order by id DESC";
			PreparedStatement prepareStatement=connection.prepareStatement(sql); 
			prepareStatement.setString(1, "Vegetables");
			prepareStatement.setString(2, "Active");
			ResultSet resultSet=prepareStatement.executeQuery();
			
			while(resultSet.next()) {
				product=new Product();
				product.setProductId(resultSet.getString(1));
				product.setProductName(resultSet.getString(2));
				product.setProductPrice(resultSet.getString(4));
				product.setCategory(resultSet.getString(3));
				product.setStatus(resultSet.getString(5));
				product.setProductImage(resultSet.getString(6));
				list.add(product);
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<Product> getFruitsProduct() {
		List<Product> list=new ArrayList<Product>();
		Product product=null;
		try {
			String sql="select * from product where category=? and active=? order by id DESC";
			PreparedStatement prepareStatement=connection.prepareStatement(sql); 
			prepareStatement.setString(1, "Fruits");
			prepareStatement.setString(2, "Active");
			ResultSet resultSet=prepareStatement.executeQuery();
			
			while(resultSet.next() ) {
				product=new Product();
				product.setProductId(resultSet.getString(1));
				product.setProductName(resultSet.getString(2));
				product.setProductPrice(resultSet.getString(4));
				product.setCategory(resultSet.getString(3));
				product.setStatus(resultSet.getString(5));
				product.setProductImage(resultSet.getString(6));
				list.add(product);
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list;	
	}

	public List<Product> getChocolatesProduct() {
		List<Product> list=new ArrayList<Product>();
		Product product=null;
		try {
			String sql="select * from product where category=? and active=? order by id DESC";
			PreparedStatement prepareStatement=connection.prepareStatement(sql); 
			prepareStatement.setString(1, "Chocolates");
			prepareStatement.setString(2, "Active");
			ResultSet resultSet=prepareStatement.executeQuery();
			
			while(resultSet.next() ) {
				product=new Product();
				product.setProductId(resultSet.getString(1));
				product.setProductName(resultSet.getString(2));
				product.setProductPrice(resultSet.getString(4));
				product.setCategory(resultSet.getString(3));
				product.setStatus(resultSet.getString(5));
				product.setProductImage(resultSet.getString(6));
				list.add(product);
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list;	
	}

	public List<Product> getMeatsSeaFoodsProduct() {
		List<Product> list=new ArrayList<Product>();
		Product product=null;
		try {
			String sql="select * from product where category=? and active=? order by id DESC";
			PreparedStatement prepareStatement=connection.prepareStatement(sql); 
			prepareStatement.setString(1, "MeatsSeafoods");
			prepareStatement.setString(2, "Active");
			ResultSet resultSet=prepareStatement.executeQuery();
			
			while(resultSet.next() ) {
				product=new Product();
				product.setProductId(resultSet.getString(1));
				product.setProductName(resultSet.getString(2));
				product.setProductPrice(resultSet.getString(4));
				product.setCategory(resultSet.getString(3));
				product.setStatus(resultSet.getString(5));
				product.setProductImage(resultSet.getString(6));
				list.add(product);
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list;	
	}

	public List<Product> getGrainsProduct() {
		List<Product> list=new ArrayList<Product>();
		Product product=null;
		try {
			String sql="select * from product where category=? and active=? order by id DESC";
			PreparedStatement prepareStatement=connection.prepareStatement(sql); 
			prepareStatement.setString(1, "Grains");
			prepareStatement.setString(2, "Active");
			ResultSet resultSet=prepareStatement.executeQuery();
			
			while(resultSet.next() ) {
				product=new Product();
				product.setProductId(resultSet.getString(1));
				product.setProductName(resultSet.getString(2));
				product.setProductPrice(resultSet.getString(4));
				product.setCategory(resultSet.getString(3));
				product.setStatus(resultSet.getString(5));
				product.setProductImage(resultSet.getString(6));
				list.add(product);
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list;	
	}
	public List<Product> getDairyProduct() {
		List<Product> list=new ArrayList<Product>();
		Product product=null;
		try {
			String sql="select * from product where category=? and active=? order by id DESC";
			PreparedStatement prepareStatement=connection.prepareStatement(sql); 
			prepareStatement.setString(1, "DairyProducts");
			prepareStatement.setString(2, "Active");
			ResultSet resultSet=prepareStatement.executeQuery();
			
			while(resultSet.next() ) {
				product=new Product();
				product.setProductId(resultSet.getString(1));
				product.setProductName(resultSet.getString(2));
				product.setProductPrice(resultSet.getString(4));
				product.setCategory(resultSet.getString(3));
				product.setStatus(resultSet.getString(5));
				product.setProductImage(resultSet.getString(6));
				list.add(product);
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list;	
	}
	public List<Product> getOthersProduct() {
		List<Product> list=new ArrayList<Product>();
		Product product=null;
		try {
			String sql="select * from product where category=? and active=? order by id DESC";
			PreparedStatement prepareStatement=connection.prepareStatement(sql); 
			prepareStatement.setString(1, "OtherProducts");
			prepareStatement.setString(2, "Active");
			ResultSet resultSet=prepareStatement.executeQuery();
			
			while(resultSet.next() ) {
				product=new Product();
				product.setProductId(resultSet.getString(1));
				product.setProductName(resultSet.getString(2));
				product.setProductPrice(resultSet.getString(4));
				product.setCategory(resultSet.getString(3));
				product.setStatus(resultSet.getString(5));
				product.setProductImage(resultSet.getString(6));
				list.add(product);
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list;	
	}

	
	
}
