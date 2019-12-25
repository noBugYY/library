package com.abc.dao;

import com.abc.beans.User;
import org.springframework.stereotype.Repository;

@Repository
public interface IUserDao {
    public User login(User user);
}
