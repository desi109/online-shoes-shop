package com.shop.service;

import com.shop.entity.Cart;
import com.shop.entity.ProductInOrder;
import com.shop.entity.User;
import java.util.Collection;
import org.springframework.stereotype.Service;

@Service
public interface CartService {
    Cart getCart(User user);

    void mergeLocalCart(Collection<ProductInOrder> productInOrders, User user);

    void delete(String itemId, User user);

    void checkout(User user);
}
