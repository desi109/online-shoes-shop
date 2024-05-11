package com.shop.service;

import com.shop.entity.ProductInOrder;
import com.shop.entity.User;
import org.springframework.stereotype.Service;

@Service
public interface ProductInOrderService {
    void update(String itemId, Integer quantity, User user);
    ProductInOrder findOne(String itemId, User user);
}
