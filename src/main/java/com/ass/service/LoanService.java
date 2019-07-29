package com.ass.service;

import com.ass.bean.*;

import java.util.List;

public interface LoanService {
    public int addLoan(Loan loan);
    public List<User> findAllUser();

    public PageBean<User_Loan_Info> findLoanByPage(int currentPage, int rows);
    public PageBean<User_Loan_Info> findLoanByPageInCondition(int loanId , String userName, String title, String realName, String typeOfLoan,
                                                              String  resCompany, int currentPage, int rows);
    public int updateStatus(int loanId);
    public PageBean<User_Loan_Info> findAllPassLoans(int currentPage, int rows);
    public PageBean<User_Loan_Info> findAllPassLoans(InvestSearchBean searchBean, int currentPage, int rows);
    public User_Loan_Info getUser_Loan_InfoById(int loanId);
   int updateLoan(int bid_money,int loanId);
}
