package com.ass.service;

import com.ass.bean.Manager;
import com.ass.bean.User;
import com.ass.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("userService")
public class UserServiceImp implements UserService {
    @Autowired
    private UserDao userDao;
    @Override
    public List<User> findAll() {
        System.out.println("查询所有账户信息");
        return null;
    }
    public Manager findManager(String name){
        return  userDao.findManager(name);
    };
    @Override
    public void saveUser(User user) {
        System.out.println("业务层保存账户");
    }

    @Override
    public User findUser(String userName) {

        return userDao.findUser(userName);
    }
    public int updateBorrower(int bid_money,int borrowerId){
        return userDao.updateBorrower(bid_money,borrowerId);
    };
    public int updateBidder(int bid_money,int bidderId){
        return userDao.updateBidder(bid_money,bidderId);
    };
}
