/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;

/**
 *
 * @author Pham Toan
 */
public class UserDAO extends DBContext {
    public User login(String inputUsername, String inputPassword) {
        PreparedStatement stm = null;
        ResultSet rs = null;
        String sql = "select * from [user] where username = ? and password = ?";
        try {
            stm = connection.prepareStatement(sql);
            stm.setString(1, inputUsername);
            stm.setString(2, inputPassword);
            rs = stm.executeQuery();
            while (rs.next()) {
                User u = new User();

                u.setId(rs.getInt("id"));
                u.setUsername(inputUsername);
                u.setPassword(inputPassword);
                u.setFullname(rs.getString("fullname"));
                u.setAddress(rs.getString("address"));
                u.setEmail(rs.getString("email"));
                u.setPhone(rs.getString("phone"));
                u.setRole_id(rs.getInt("role_id"));
                u.setBanned(rs.getInt("banned"));
                System.out.println(u);
                return u;
            }

        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public User register(User user) {
        PreparedStatement stm = null;

        String sql = "INSERT INTO [dbo].[user]\n"
                + "           ([username]\n"
                + "           ,[password]\n"
                + "           ,[fullname]\n"
                + "           ,[email]\n"
                + "           ,[phone]\n"
                + "           ,[address]\n"
                + "           ,[role_id])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?)";
        try {
            if (user.getUsername() != null && !user.getUsername().isEmpty()
                    && user.getPassword() != null && !user.getPassword().isEmpty()
                    && user.getRole_id() != 0) {
                stm = connection.prepareStatement(sql);
                stm.setString(1, user.getUsername());
                stm.setString(2, user.getPassword());
                stm.setString(3, user.getFullname());
                stm.setString(4, user.getEmail());
                stm.setString(5, user.getPhone());
                stm.setString(6, user.getAddress());
                stm.setInt(7, user.getRole_id());
                stm.executeUpdate();

                System.out.println("Click here to login");
            } else {
                System.out.println("Insert failed: Invalid data");
            }
        } catch (SQLException ex) {
            System.out.println("Insert failed");
            Logger.getLogger(UserDAO.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
        return user;
    }

    public Vector<User> getAllUser() {
        PreparedStatement stm = null;
        ResultSet rs = null;
        Vector<User> users = new Vector<>();
        String sql = "select * from [user]";
        try {
            stm = connection.prepareStatement(sql);
            rs = stm.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String username = rs.getString("username");
                String password = rs.getString("password");
                String fullname = rs.getString("fullname");
                String email = rs.getString("email");
                String phone = rs.getString("phone");
                String address = rs.getString("address");
                int role_id = rs.getInt("role_id");

                User u = new User(id, username, password, fullname, email, phone, address, role_id);
                users.add(u);
            }
            return users;

        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void insertUser(User user) {
        PreparedStatement stm = null;

        String sql = "INSERT INTO [dbo].[user]\n"
                + "           ([username]\n"
                + "           ,[password]\n"
                + "           ,[fullname]\n"
                + "           ,[email]\n"
                + "           ,[phone]\n"
                + "           ,[address]\n"
                + "           ,[role_id])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?)";
        try {
            stm = connection.prepareStatement(sql);
            stm.setString(1, user.getUsername());
            stm.setString(2, user.getPassword());
            stm.setString(3, user.getFullname());
            stm.setString(4, user.getEmail());
            stm.setString(5, user.getPhone());
            stm.setString(6, user.getAddress());
            stm.setInt(7, user.getRole_id());
            stm.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
    }
}
