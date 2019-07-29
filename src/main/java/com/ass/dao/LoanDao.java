package com.ass.dao;

import com.ass.bean.*;
import com.ass.common.TutorDynaSqlProvider;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LoanDao {
    @Insert("INSERT INTO loan(userId,borrower,purpose,typeOfLoan,bid_limit,title," +
            "amount,rate,borrow_valid_time,deadline,modeOfRepayment,status,borrow_contents)  "+
            "values(#{userId},#{borrower},#{purpose},#{typeOfLoan}," +
            "#{bid_limit},#{title},#{amount},#{rate},#{borrow_valid_time}," +
            "#{deadline},#{modeOfRepayment},#{status},#{borrow_contents})")
    public int addLoan(Loan loan);
    @Select("select * from user where userType='用户'")
    public List<User> findAllUser();
    @Select("select count(*) from loan")
  public int getAllLoanCount();
    @Select("Select user.userId,user.userName, user.realName,user.resCompany,loan.loanId, loan.title, loan.amount," +
            "loan.rate,loan.deadline,loan.modeOfRepayment,loan.typeOfLoan,loan.`status` " +
            "from im.user right outer join im.loan on(user.userId=loan.userId) limit #{head},#{rear}")
  public List<User_Loan_Info> getLoans(@Param("head") int head, @Param("rear")int rear);

@SelectProvider(type =TutorDynaSqlProvider.class,method ="getLoansByCondition")
    public List<User_Loan_Info> getLoansByCondition(@Param("loanId")int loanId , @Param("userName")String userName, @Param("title")String title, @Param("realName")String realName,
                                                    @Param("typeOfLoan")String typeOfLoan, @Param("resCompany")String  resCompany, @Param("head") int head, @Param("rear")int rear);

    @SelectProvider(type =TutorDynaSqlProvider.class,method ="getAllLoanCountByCondition")
    public int getAllLoanCountByCondition(@Param("loanId")int loanId ,@Param("userName")String userName,@Param("title")String title,@Param("realName")String realName,
                                          @Param("typeOfLoan")String typeOfLoan,@Param("resCompany")String  resCompany);
    @Update("UPDATE loan SET status='已审核' WHERE loanId=#{loanId}")
    public int updateStatus(int loanId);
    //获取所有已经被审核的贷款信息总数
    @Select("select count(*) from loan WHERE status='已审核'")
    public int getAllPassLoanCount();
    //获取所有已经被审核的贷款信息
    @Select("Select user.userId,user.userName, user.realName,user.resCompany,loan.loanId, loan.title, loan.amount," +
            "loan.rate,loan.deadline,loan.modeOfRepayment,loan.typeOfLoan,loan.`status` " +
            "from im.user right outer join im.loan on(user.userId=loan.userId) WHERE status='已审核' limit #{head},#{rear}")
    public  List<User_Loan_Info>  getAllPassLoans(@Param("head") int head, @Param("rear")int rear);
    @SelectProvider(type =TutorDynaSqlProvider.class,method ="getAllPassLoanCountByCondition")
    public  int getAllPassLoanCountByCondition(@Param("borrow_type")String borrow_type,
                                               @Param("borrow_period") int borrow_period,
                                               @Param("account_status")int  account_status,
                                               @Param("borrow_style")String  borrow_style);
    @SelectProvider(type =TutorDynaSqlProvider.class,method ="getAllPassLoansByCondition")
    public List<User_Loan_Info>  getAllPassLoansByCondition(@Param("borrow_type")String borrow_type,
                                                            @Param("borrow_period") int borrow_period,
                                                            @Param("account_status")int  account_status,
                                                            @Param("borrow_style")String  borrow_style,
                                                            @Param("head")int head,
                                                            @Param("rear")int rear);
    //得到投标信息
    @Select("Select user.userId,user.userName, user.realName,user.resCompany,user.money,loan.loanId, loan.title, loan.amount," +
            "loan.rate,loan.deadline,loan.modeOfRepayment,loan.typeOfLoan,loan.`status` ,loan.borrower , loan.bid_limit " +
            "from im.user right outer join im.loan on(user.userId=loan.userId) WHERE status='已审核' AND loan.LoanId=#{loanId}")
   public User_Loan_Info getUser_Loan_InfoById(int loanId);
    @Update("UPDATE im.loan SET amount=amount-#{bid_money} where loanId=#{loanId}")
    int updateLoan(@Param("bid_money") int bid_money,@Param("loanId") int loanId);
}
