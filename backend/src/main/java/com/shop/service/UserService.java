package com.shop.service;

import com.shop.entity.User;
import java.util.Collection;
import org.springframework.stereotype.Service;

@Service
public interface UserService {
    User findOne(String email);

    Collection<User> findByRole(String role);

    User save(User user);

    User update(User user);
}
