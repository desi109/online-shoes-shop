package com.shop.service;

import com.shop.entity.ProductCategory;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public interface CategoryService {

    List<ProductCategory> findAll();

    ProductCategory findByCategoryType(Integer categoryType);

    List<ProductCategory> findByCategoryTypeIn(List<Integer> categoryTypeList);

    ProductCategory save(ProductCategory productCategory);


}
