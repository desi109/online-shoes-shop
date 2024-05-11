package com.shop;

import com.shop.service.impl.CartServiceImplTest;
import com.shop.service.impl.CategoryServiceImplTest;
import com.shop.service.impl.OrderServiceImplTest;
import com.shop.service.impl.ProductInOrderServiceImplTest;
import com.shop.service.impl.ProductServiceImplTest;
import com.shop.service.impl.UserServiceImplTest;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;

@RunWith(Suite.class)
@Suite.SuiteClasses({
		CartServiceImplTest.class,
		CategoryServiceImplTest.class,
		OrderServiceImplTest.class,
		ProductInOrderServiceImplTest.class,
		ProductServiceImplTest.class,
		UserServiceImplTest.class
})
public class OnlineShopTuApplicationTests {

}

/*
@SpringBootTest
class OnlineShopTuApplicationTests {

	@Test
	void contextLoads() {
	}

}
 */