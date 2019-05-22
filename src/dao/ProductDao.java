package dao;

import pojo.Product;

import java.util.List;

public interface ProductDao {
    Product getProduct(int product_id);
    void insertProduct(Product product);
    void updateProduct(Product product);
    void deleteProduct(int product_id);
    List<Product> getProductList(int page, int size);
    List<Product> searchProductList(int page, int size, String search_key);
    int countProduct();
}
