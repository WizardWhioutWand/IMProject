package com.ass.controller;

import com.ass.bean.*;
import com.ass.service.LoanService;
import com.ass.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

@Controller
@RequestMapping("/loan")
public class LoanController {
    @Autowired
    private LoanService loanService;
    @Autowired
    private UserService userService;
    @RequestMapping(value = "/addLoan",method = RequestMethod.POST)
    public void addLoan(Loan loan, HttpServletResponse response, HttpServletRequest request)throws  Exception{
        System.out.println(loan);
           loanService.addLoan(loan);
           request.getRequestDispatcher("/loan/showLoansByPage").forward(request,response);
    }
    @RequestMapping("/showAllUsers")
    public void showAllUser(HttpServletResponse response, HttpServletRequest request)throws Exception{
        List<User> users =loanService.findAllUser();
        for (User u:users
             ) {
            System.out.println(u);

        }
        request.getSession().setAttribute("users",users);
        request.getRequestDispatcher("/admin/borrow/borrow_shenqing.jsp").forward(request,response);
    }
    @RequestMapping("/showLoansByPage")
    public void showLoansByPage(HttpServletResponse response,HttpServletRequest request) throws Exception{

        int currentPage =1;
        if(request.getParameter("currentPage")!=null){
            currentPage=Integer.parseInt(request.getParameter("currentPage"));
        }
        int rows =3;

        PageBean<User_Loan_Info> pageBean= loanService.findLoanByPage(currentPage,rows);
        request.setAttribute("pb",pageBean);
        request.getRequestDispatcher("/admin/borrow/index.jsp").forward(request,response);
    }

    @RequestMapping(value = "/searchByCondition",method =RequestMethod.POST )
    public void searchByCondition(SearchBean searchBean,HttpServletResponse response, HttpServletRequest request) throws ServletException, IOException {
        int currentPage =1;
        int rows =3;
        if(request.getParameter("currentPage")!=""){
            if(request.getParameter("currentPage")==null){
                currentPage =1;
            }else {
                currentPage=Integer.parseInt(request.getParameter("currentPage"));
            }
        }

        PageBean<User_Loan_Info> pageBean= loanService.findLoanByPageInCondition(searchBean.getLoanId(),searchBean.getUserName(),searchBean.getTitle(),searchBean.getRealName(),searchBean.getTypeOfLoan(),searchBean.getResCompany(),currentPage,rows);
        request.setAttribute("pb",pageBean);
        request.getRequestDispatcher("/admin/borrow/index.jsp").forward(request,response);
    }
    @RequestMapping("/updateStatus")
    public void updateStatus(@RequestParam("loanId") int loanId,HttpServletResponse response, HttpServletRequest request)throws ServletException ,IOException{
        loanService.updateStatus(loanId);
       request.getRequestDispatcher("/loan/showLoansByPage").forward(request,response);
    }
    //获取已经审核过的投资
    @RequestMapping("/getAllPassLoans")
public void getAllPassLoans(HttpServletResponse response, HttpServletRequest request)throws IOException,ServletException{
        int currentPage =1;
        if(request.getParameter("currentPage")!=""){
            if(request.getParameter("currentPage")==null){
                currentPage =1;
            }else {
                currentPage=Integer.parseInt(request.getParameter("currentPage"));
            }


        }
        int rows =3;

        PageBean<User_Loan_Info> pageBean= loanService.findAllPassLoans(currentPage,rows);
        request.setAttribute("pb",pageBean);
        request.getRequestDispatcher("/invest/index.jsp").forward(request,response);

}

        //投资界面按条件搜索投资目标
    @RequestMapping(value = "/searchLoansByCondition" ,method = RequestMethod.POST)
    public void searchLoansByCondition(InvestSearchBean search ,HttpServletRequest request,HttpServletResponse response
                                        )throws ServletException,IOException{

           if (search.isNull()){
               System.out.println("无条件");
               int currentPage =1;
               if(request.getParameter("currentPage")!=""){
                   if(request.getParameter("currentPage")==null){
                       currentPage =1;
                   }else {
                       currentPage=Integer.parseInt(request.getParameter("currentPage"));
                   }
               }
               int rows =3;

               PageBean<User_Loan_Info> pageBean= loanService.findAllPassLoans(currentPage,rows);
               request.setAttribute("pb",pageBean);
               request.getRequestDispatcher("/invest/index.jsp").forward(request,response);
           }else {
               System.out.println("有条件");
               int currentPage =1;
               if(request.getParameter("currentPage")!=""){
                   if(request.getParameter("currentPage")==null){
                       currentPage =1;
                   }else {
                       currentPage=Integer.parseInt(request.getParameter("currentPage"));
                   }
               }
               int rows =3;

               PageBean<User_Loan_Info> pageBean= loanService.findAllPassLoans(search,currentPage,rows);
               request.setAttribute("pb",pageBean);
               request.setAttribute("borrow_type",search.getBorrow_type());
               request.setAttribute("borrow_period",search.getBorrow_period());
               request.setAttribute("borrow_style",search.getBorrow_style());
               request.setAttribute("account_status",search.getAccount_status());
               // String borrow_type;
               //    //deadline
               //    String borrow_period;
               //    //amount
               //    String account_status;
               //    //modeOfRepayment;
               //    String  borrow_style;
               request.getRequestDispatcher("/invest/index.jsp").forward(request,response);

           }
    }
    //投标
    @RequestMapping(value = "/goToBid",method = RequestMethod.GET)
    public void goToBid(@Param("loanId") int loanId,@Param("userName")String userName,HttpServletRequest request,HttpServletResponse response
    )throws ServletException,IOException{
         User_Loan_Info user_loan_info =loanService.getUser_Loan_InfoById(loanId);

         request.getSession().setAttribute("user_loan_info",user_loan_info);

         request.getRequestDispatcher("/invest/full_success/goToBid.jsp").forward(request,response);
    }
    @RequestMapping(value = "/bid",method = RequestMethod.GET)
    public @ResponseBody Bid_Info bid(@Param("loanId") Integer loanId, @Param("borrowerId") Integer borrowerId, @Param("bidderId") Integer bidderId, @Param("bid_money") int bid_money, HttpServletRequest request, HttpServletResponse response
    )throws ServletException,IOException{
        System.out.println("1111111111111111111111111");
        System.out.println("loanId"+loanId+"money"+bid_money+"borrowerId"+borrowerId+"bidderId"+bidderId);
        loanService.updateLoan(bid_money,loanId);
        userService.updateBorrower(bid_money,borrowerId);
        userService.updateBidder(bid_money,bidderId);


   Bid_Info bid_info=new Bid_Info();
   bid_info.setRe("成功了;");
   return bid_info;


 //request.getRequestDispatcher("/invest/full_success/goToBid.jsp").forward(request,response);

    }
}

