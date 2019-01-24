package com.niit.dao;

import java.util.List;

import org.hibernate.query.Query;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.dao.CartItemDao;
import com.niit.models.CartItem;
import com.niit.models.CustomerOrder;
import com.niit.models.User;

@Repository("CartItemDao")
@Transactional
public class CartItemDaoImpl implements CartItemDao{
	@Autowired
	private SessionFactory sessionFactory;

	public void addToCart(CartItem cartItem) {
		Session session = sessionFactory.getCurrentSession();
		session.save(cartItem);
		
	}

	public User getUser(String email) {
		Session session = sessionFactory.getCurrentSession();
		System.out.println(email);
		User user = (User)session.get(User.class, email);
		return user;
	}

@SuppressWarnings("deprecation")
public List<CartItem> getCartItems(String email) {
	Session session=sessionFactory.getCurrentSession();
	Query query=session.createQuery("from CartItem where user.email=:email");
	query.setString("email", email);
	List<CartItem> cartItems=query.list();
	return cartItems;
	
}

	public void removeCartItem(int cartItemId) {
		Session session = sessionFactory.getCurrentSession();
		CartItem cartItem = (CartItem) session.get(CartItem.class, cartItemId);
		session.delete(cartItem);
		
	}

	public void updateCartItem(int cartItemId, int requestedQuantity) {
		Session session = sessionFactory.getCurrentSession();
		CartItem cartItem = (CartItem) session.get(CartItem.class, cartItemId);
		 cartItem.setQuantity(requestedQuantity);
		 cartItem.setTotalPrice(requestedQuantity*cartItem.getProduct().getPrice());
	
	}
	public CustomerOrder createCustomerOrder(CustomerOrder customerOrder) {
		Session session=sessionFactory.getCurrentSession();
		session.save(customerOrder);
		return customerOrder;
	}
}
