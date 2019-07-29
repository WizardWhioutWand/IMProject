package com.ass.service;

import com.ass.bean.Manager;
import com.ass.bean.User;
import com.ass.dao.UserDao;
import org.springframework.stereotype.Component;

import java.util.List;

public interface UserService {

    //查找所有用户
    public List<User> findAll();
    //保存用户
    public void saveUser(User user);
    public User findUser(String userName);
    public Manager findManager(String name);
    public int updateBorrower(int bid_money,int borrowerId);
    public int updateBidder(int bid_money,int bidderId);
}
