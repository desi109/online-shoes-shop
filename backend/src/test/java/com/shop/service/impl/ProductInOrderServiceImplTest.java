package com.shop.service.impl;

import com.shop.entity.Cart;
import com.shop.entity.ProductInOrder;
import com.shop.entity.User;
import com.shop.repository.ProductInOrderRepository;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.HashSet;
import java.util.Set;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;

@RunWith(SpringRunner.class)
public class ProductInOrderServiceImplTest {

    @Mock
    private ProductInOrderRepository productInOrderRepository;

    @InjectMocks
    private ProductInOrderServiceImpl productInOrderService;

    private User user;

    private ProductInOrder productInOrder;

    @Before
    public void setUp() {
        user = new User();
        Cart cart = new Cart();

        productInOrder = new ProductInOrder();
        productInOrder.setProductId("1");

        Set set = new HashSet<>();
        set.add(productInOrder);

        cart.setProducts(set);

        user.setCart(cart);
    }

    @Test
    public void updateTest() {
        productInOrderService.update("1", 10, user);

        Mockito.verify(productInOrderRepository, Mockito.times(1)).save(productInOrder);
    }

    @Test
    public void findOneTest() {
        ProductInOrder productInOrderReturn = productInOrderService.findOne("1", user);

        assertThat(productInOrderReturn.getProductId(), is(productInOrder.getProductId()));
    }
}
