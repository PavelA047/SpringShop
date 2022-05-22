package com.gb.springshop.services;

import com.gb.springshop.entities.SystemUser;
import com.gb.springshop.entities.User;
import org.springframework.security.core.userdetails.UserDetailsService;

public interface UserService extends UserDetailsService {
    User findByUserName(String username);
    boolean save(SystemUser systemUser);
}
