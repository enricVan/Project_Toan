/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import dal.ProductDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Enumeration;
import model.CartItem;
import model.Product;
import model.User;

/**
 *
 * @author Pham Toan
 */
public class CartController extends HttpServlet {

    private final String CART_URL = "cart.jsp";

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        String service = req.getParameter("service");
        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("user");

        if (user == null) {
            resp.sendRedirect("login");
        } else {

            if (service.equals("showCart")) {
                resp.sendRedirect(CART_URL);
            }

            if (service.equals("addToCart")) {
                Integer productId = Integer.parseInt(req.getParameter("productId"));
                Product product = (new ProductDAO()).getProductsById(productId);
                if (session.getAttribute(productId.toString()) == null) {
                    CartItem cartItem = new CartItem(product, 1);
                    session.setAttribute(productId.toString(), cartItem);
                } else {
                    int newQuantity = ((CartItem) session.getAttribute(productId.toString())).getQuantity() + 1;
                    CartItem cartItem = new CartItem(product, newQuantity);
                    session.setAttribute(productId.toString(), cartItem);
                }

                resp.sendRedirect("customer");
            }

            if (service.equals("removeItem")) {
                String id = req.getParameter("id");
                session.removeAttribute(id);
                resp.sendRedirect(CART_URL);

            }

            if (service.equals("removeAll")) {
                Enumeration en = session.getAttributeNames();
                while (en.hasMoreElements()) {
                    String id = en.nextElement().toString();
                    if (!id.equals("user") && !id.equals("fullname") && !id.equals("numberProductsInCart")) {
                        session.removeAttribute(id);
                    }
                }
                resp.sendRedirect(CART_URL);

            }

            if (service.equals("update")) {
                Enumeration em = session.getAttributeNames();

                while (em.hasMoreElements()) {
                    String id = em.nextElement().toString(); //get key

                    if (!id.equals("user") && !id.equals("fullname") && !id.equals("numberProductsInCart")) {
                        int quantity = Integer.parseInt(req.getParameter("p" + id));
                        CartItem cartItem = (CartItem) session.getAttribute(id);
                        cartItem.setQuantity(quantity);
                        session.setAttribute(id, cartItem);
                    }
                }
                resp.sendRedirect(CART_URL);

            }
        }
    }
}
