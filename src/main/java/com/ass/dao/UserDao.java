package com.ass.dao;

import com.ass.bean.Manager;
import com.ass.bean.User;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;
import java.util.List;
@Repository
public interface UserDao {
    //查找所有用户
    @Select("select * from user")
    public List<User> findAll();
    //保存用户

    public void saveUser(User user);
    @Select("select * from user where userName=#{userName}")
    public User findUser(String userName);
    @Select("select * from manager where name=#{name}")
    public Manager findManager(String name);
    @Update("UPDATE user SET money=money+#{bid_money} where userId=#{borrowerId}")
    public int updateBorrower(@Param("bid_money") int bid_money,@Param("borrowerId") int borrowerId);
    @Update("UPDATE user SET money=money-#{bid_money} where userId=#{bidderId}")
    public int updateBidder(@Param("bid_money")int bid_money,@Param("bidderId")int bidderId);
}
