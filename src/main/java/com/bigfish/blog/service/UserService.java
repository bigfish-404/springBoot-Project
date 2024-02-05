package com.bigfish.blog.service;

import com.bigfish.blog.po.User;

public interface UserService {
    User checkUser(String username, String password);
}
