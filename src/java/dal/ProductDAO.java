/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Product;

/**
 *
 * @author Pham Toan
 */
public class ProductDAO extends DBContext {
     public Vector<Product> getAll() {
        PreparedStatement stm = null;
        ResultSet rs = null;
        Vector<Product> products = new Vector<>();
        String sql = "select * from [product]";
        try {
            stm = connection.prepareStatement(sql);
            rs = stm.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id"), quantity = rs.getInt("quantity"), brand_id = rs.getInt("brand_id");
                String name = rs.getString("name"), description = rs.getString("description"), image_url = rs.getString("image_url");
                double price = rs.getDouble("price");
                Date release_date = rs.getDate("release_date");

                products.add(new Product(id, quantity, brand_id, name, description, image_url, price, release_date));
            }
            return products;

        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    //search by name
    public Vector<Product> getProductsByKeywords(String s) {
        PreparedStatement stm = null;
        ResultSet rs = null;
        Vector<Product> products = new Vector<>();
        String sql = "select * from [product] where name like ?";
        try {
            stm = connection.prepareStatement(sql);
            stm.setString(1, "%" + s + "%");
            rs = stm.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id"), quantity = rs.getInt("quantity"), brand_id = rs.getInt("brand_id");
                String name = rs.getString("name"), description = rs.getString("description"), image_url = rs.getString("image_url");
                double price = rs.getDouble("price");
                Date release_date = rs.getDate("release_date");

                products.add(new Product(id, quantity, brand_id, name, description, image_url, price, release_date));
            }
            return products;

        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public Vector<Product> getProductsByBrand(int brandId) {
        PreparedStatement stm = null;
        ResultSet rs = null;
        Vector<Product> products = new Vector<>();
        String sql = "select * from [product] where brand_id = ?";
        try {
            stm = connection.prepareStatement(sql);
            stm.setInt(1, brandId);
            rs = stm.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id"), quantity = rs.getInt("quantity"), brand_id = rs.getInt("brand_id");
                String name = rs.getString("name"), description = rs.getString("description"), image_url = rs.getString("image_url");
                double price = rs.getDouble("price");
                Date release_date = rs.getDate("release_date");

                products.add(new Product(id, quantity, brand_id, name, description, image_url, price, release_date));
            }
            return products;

        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class
                    .getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                stm.close();
                rs.close();
                connection.close();

            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class
                        .getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }
    
     public Product getProductsById(int productId) {
        PreparedStatement stm = null;
        ResultSet rs = null;
        Product product = null;
        String sql = "select * from [product] where id = ?";
        try {
            stm = connection.prepareStatement(sql);
            stm.setInt(1, productId);
            rs = stm.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id"), quantity = rs.getInt("quantity"), brand_id = rs.getInt("brand_id");
                String name = rs.getString("name"), description = rs.getString("description"), image_url = rs.getString("image_url");
                double price = rs.getDouble("price");
                Date release_date = rs.getDate("release_date");

                product = new Product(id, quantity, brand_id, name, description, image_url, price, release_date);
            }
            return product;

        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class
                    .getName()).log(Level.SEVERE, null, ex);
        } 
        return null;
    }
}
