package com.ass.bean;

import java.io.Serializable;

public class User implements Serializable {
    public int userId;
    public String userName;
    public String realName;
    public String resCompany;
    public String userPW;
    public String userType;
  public String credit_Rating;
  public  int money;




    public User() {
    }
    public void setCredit_Rating(String credit_Rating) {
        this.credit_Rating = credit_Rating;
    }

    public String getCredit_Rating() {
        return credit_Rating;
    }
    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    public int getUserId() {
        return userId;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String getResCompany() {
        return resCompany;
    }

    public void setResCompany(String resCompany) {
        this.resCompany = resCompany;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPW() {
        return userPW;
    }

    public void setUserPW(String userPW) {
        this.userPW = userPW;
    }

    public String getUserType() {
        return userType;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", userName='" + userName + '\'' +
                ", userPW='" + userPW + '\'' +
                ", userType='" + userType + '\'' +
                '}';
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }
}