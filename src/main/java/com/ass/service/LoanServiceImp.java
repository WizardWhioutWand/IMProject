package com.ass.service;

import com.ass.bean.*;
import com.ass.dao.LoanDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("loanService")
public class LoanServiceImp implements LoanService {
    @Resource
    private LoanDao loanDao;
    @Override
    public int addLoan(Loan loan) {
        int i = loanDao.addLoan(loan);
        return i;
    }
    @Override
    public List<User> findAllUser(){
        return  loanDao.findAllUser();
    };

    public PageBean<User_Loan_Info> findLoanByPage(int currentPage, int rows){
        //创建空的pageBean对象
        PageBean<User_Loan_Info> pageBean =new PageBean<User_Loan_Info>();

        //2设置当前页面的属性和rows属性
        pageBean.setCurrentPage(currentPage);
        pageBean.setRows(rows);
        int head=(currentPage-1)*rows;
        int rear =head+rows;
        int totalCount=0;
        try{
            totalCount=  loanDao.getAllLoanCount();
            pageBean.setList(loanDao.getLoans(head,rear));

        }catch (Exception e){
            e.printStackTrace();
        }
        pageBean.setTotalCount(totalCount);
        pageBean.setTotalPage(totalCount%rows==0?(totalCount/rows):(totalCount/rows+1));
        return  pageBean;
    }
    public PageBean<User_Loan_Info> findLoanByPageInCondition(int loanId , String userName, String title, String realName, String typeOfLoan, String  resCompany, int currentPage, int rows){
        //创建空的pageBean对象
        PageBean<User_Loan_Info> pageBean =new PageBean<User_Loan_Info>();
        //2设置当前页面的属性和rows属性
        pageBean.setRows(rows);
        pageBean.setCurrentPage(currentPage);

        int head=(currentPage-1)*rows;
        int rear =head+rows;
        int totalCount=0;
        try{

            totalCount=  loanDao.getAllLoanCountByCondition(loanId , userName, title,realName, typeOfLoan,  resCompany);
            System.out.println(totalCount);
            pageBean.setList(loanDao.getLoansByCondition(loanId , userName, title,realName, typeOfLoan,  resCompany,head,rear));


        }catch (Exception e){
            e.printStackTrace();
        }
        pageBean.setTotalPage(totalCount%rows==0?(totalCount/rows):(totalCount/rows+1));
        pageBean.setTotalCount(totalCount);

        return  pageBean;
    }
    public int updateStatus(int loanId){
        return loanDao.updateStatus(loanId);
    };
    public PageBean<User_Loan_Info> findAllPassLoans(int currentPage, int rows){
        //创建空的pageBean对象
        PageBean<User_Loan_Info> pageBean =new PageBean<User_Loan_Info>();

        //2设置当前页面的属性和rows属性
        pageBean.setCurrentPage(currentPage);
        pageBean.setRows(rows);
        int head=(currentPage-1)*rows;
        int rear =head+rows;
        int totalCount=0;
        try{
            totalCount=  loanDao.getAllPassLoanCount();
            pageBean.setList(loanDao.getAllPassLoans(head,rear));

        }catch (Exception e){
            e.printStackTrace();
        }
        pageBean.setTotalCount(totalCount);
        pageBean.setTotalPage(totalCount%rows==0?(totalCount/rows):(totalCount/rows+1));
        return  pageBean;
    };
    public PageBean<User_Loan_Info> findAllPassLoans(InvestSearchBean isb, int currentPage, int rows){
        //创建空的pageBean对象
        PageBean<User_Loan_Info> pageBean =new PageBean<User_Loan_Info>();

        //2设置当前页面的属性和rows属性
        pageBean.setCurrentPage(currentPage);
        pageBean.setRows(rows);
        int head=(currentPage-1)*rows;
        int rear =head+rows;
        int totalCount=0;
        try{
            totalCount=  loanDao.getAllPassLoanCountByCondition(isb.getBorrow_type(),isb.getBorrow_period(),isb.getAccount_status(),isb.getBorrow_style());
            pageBean.setList(loanDao.getAllPassLoansByCondition(isb.getBorrow_type(),isb.getBorrow_period(),isb.getAccount_status(),isb.getBorrow_style(),head,rear));

        }catch (Exception e){
            e.printStackTrace();
        }
        pageBean.setTotalCount(totalCount);
        pageBean.setTotalPage(totalCount%rows==0?(totalCount/rows):(totalCount/rows+1));
        return  pageBean;
    };
    public User_Loan_Info getUser_Loan_InfoById(int loanId){
       return loanDao.getUser_Loan_InfoById(loanId);
    }
    public  int updateLoan(int bid_money,int loanId){
        return loanDao.updateLoan(bid_money,loanId);
    };
}
