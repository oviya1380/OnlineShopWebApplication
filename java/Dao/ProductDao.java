package Dao;

import java.util.List;

import UserInterface.Product;

public interface ProductDao {
	public boolean addProduct(Product product);
	public List<Product> getAllProduct();
	public Product getProductById(int id);
	public boolean updateEditProduct(Product product);
	public boolean deleteProduct(int id);
	public List<Product> getVegetablesProduct();
	//public List<Product> getProduct();
	public List<Product> getFruitsProduct();
	public List<Product> getChocolatesProduct();
	public List<Product> getMeatsSeaFoodsProduct();
	public List<Product> getGrainsProduct();
	public List<Product> getDairyProduct();
	public List<Product> getOthersProduct();
}