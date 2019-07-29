package com.ass.test;

import com.ass.bean.User_Loan_Info;
import com.ass.bean.PageBean;
import com.ass.bean.SearchBean;
import com.ass.service.LoanService;
import com.ass.service.UserService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestSpring {
    @Test
    public void serviceTest(){
        ApplicationContext ac =new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        UserService service =(UserService) ac.getBean("userService");
        service.findAll();


    }
    @Test
    public void loanServiceTest(){
        ApplicationContext ac =new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        LoanService service =(LoanService) ac.getBean("loanService");
        SearchBean searchBean =new SearchBean();
      PageBean<User_Loan_Info> pageBean = service.findLoanByPage(1,3);

        System.out.println(pageBean);
    }
}
