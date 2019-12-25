package com.abc.service;

import com.abc.beans.User;
import com.abc.dao.IUserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements IUserService{
    @Autowired
    private IUserDao userDao;
    @Override
    public User userLogin(User user) {
       User u =  userDao.login(user);
       return u;
    }
}
