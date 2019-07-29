package com.ass.common;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.jdbc.SQL;

public class TutorDynaSqlProvider {
    public String getLoansByCondition(@Param("loanId")int loanId ,@Param("userName")String userName,@Param("title")String title,@Param("realName")String realName,
                                      @Param("typeOfLoan")String typeOfLoan,@Param("resCompany")String  resCompany,@Param("head") int head, @Param("rear")int rear){
return new SQL(){
    {
        SELECT("user.userId,user.userName,user.realName,user.resCompany,loan.loanId, loan.title, loan.amount," +
                "loan.rate,loan.deadline,loan.modeOfRepayment,loan.typeOfLoan,loan.`status`");
        FROM("user");
        RIGHT_OUTER_JOIN("loan on (user.userId=loan.userId)");
        WHERE("1=1");
         if (loanId!=0){
             WHERE("loan.loanId=#{loanId}");
         }
         if (userName!=""){
        WHERE("user.userName=#{userName}");
    }
        if (title!=""){
            WHERE("loan.title=#{title}");
        }
        if (realName!=""){
            WHERE("user.realName=#{realName}");
        }
        if (typeOfLoan!=""){
            WHERE("loan.typeOfLoan=#{typeOfLoan}");
        }
        if (resCompany!=""){
            WHERE("user.resCompany=#{resCompany}");
        }


    }
        }.toString().concat("limit #{head},#{rear}");
    }
    public String getAllLoanCountByCondition(@Param("loanId")int loanId , @Param("userName")String userName, @Param("title")String title, @Param("realName")String realName,
                                             @Param("typeOfLoan")String typeOfLoan, @Param("resCompany")String  resCompany) {
        return new SQL() {
            {
                SELECT("count(*)");
                FROM("user");
                RIGHT_OUTER_JOIN("loan on user.userId=loan.userId");
                WHERE("1=1");
                if (loanId != 0) {
                    WHERE("loan.loanId=#{loanId}");
                }
                if (userName != "") {
                    WHERE("user.userName=#{userName}");
                }
                if (title != "") {
                    WHERE("loan.title=#{title}");
                }
                if (realName != "") {
                    WHERE("user.realName=#{realName}");
                }
                if (typeOfLoan != "") {
                    WHERE("loan.typeOfLoan=#{typeOfLoan}");
                }
                if (resCompany != "") {
                    WHERE("user.resCompany=#{resCompany}");
                }


            }
        }.toString();
    }

    public  String getAllPassLoanCountByCondition(@Param("borrow_type")String borrow_type,
                                                  @Param("borrow_period") int borrow_period,
                                                  @Param("account_status")int  account_status,
                                                  @Param("borrow_style")String  borrow_style){
        return new SQL() {
            {
                SELECT("count(*)");
                FROM("user");
                RIGHT_OUTER_JOIN("loan on user.userId=loan.userId");
                WHERE("1=1");
                if (borrow_type!=""){
                    WHERE("loan.typeOfLoan=#{borrow_type}");
                }
                if (borrow_period!=0){
                    if (borrow_period==1){
                        WHERE("loan.deadline<=3 ");
                    }else
                    if (borrow_period==2){
                        WHERE("loan.deadline BETWEEN 3 AND 6");
                    }else
                    if (borrow_period==3){
                        WHERE("loan.deadline BETWEEN 6 AND 12");
                    }else
                    if (borrow_period==4){
                        WHERE("loan.deadline >=12");
                    }

                }
                if (account_status!=0){
                    if (account_status==1){
                        WHERE("loan.amount<=50000");
                    }else
                    if (account_status==2){
                        WHERE("loan.amount BETWEEN 50000 AND 100000");
                    }else
                    if (account_status==3){
                        WHERE("loan.amount BETWEEN 100000 AND 500000");
                    }else
                    if (account_status==4){
                        WHERE("loan.amount>=500000");
                    }

                }
                if (borrow_style!=""){
                    WHERE("loan.modeOfRepayment=#{borrow_style}");
                }


            }
        }.toString();
    };
    public String getAllPassLoansByCondition(@Param("borrow_type")String borrow_type,
                                                    @Param("borrow_period") int borrow_period,
                                                    @Param("account_status")int  account_status,
                                                    @Param("borrow_style")String  borrow_style,
                                                    @Param("head")int head,
                                                    @Param("rear")int rear){
        return new SQL(){
            {
                SELECT("user.userId,user.userName,user.realName,user.resCompany,loan.loanId, loan.title, loan.amount," +
                        "loan.rate,loan.deadline,loan.modeOfRepayment,loan.typeOfLoan,loan.`status`");
                FROM("user");
                RIGHT_OUTER_JOIN("loan on (user.userId=loan.userId)");
                WHERE("1=1");
                if (borrow_type!=""){
                    WHERE("loan.typeOfLoan=#{borrow_type}");
                }
                if (borrow_period!=0){
                    if (borrow_period==1){
                        WHERE("loan.deadline<=3 ");
                    }else
                    if (borrow_period==2){
                        WHERE("loan.deadline BETWEEN 3 AND 6");
                    }else
                    if (borrow_period==3){
                        WHERE("loan.deadline BETWEEN 6 AND 12");
                    }else
                    if (borrow_period==4){
                        WHERE("loan.deadline >=12");
                    }

                }
                if (account_status!=0){
                    if (account_status==1){
                        WHERE("loan.amount<=50000");
                    }else
                    if (account_status==2){
                        WHERE("loan.amount BETWEEN 50000 AND 100000");
                    }else
                    if (account_status==3){
                        WHERE("loan.amount BETWEEN 100000 AND 500000");
                    }else
                    if (account_status==4){
                        WHERE("loan.amount>=500000");
                    }

                }
                if (borrow_style!=""){
                    WHERE("loan.modeOfRepayment=#{borrow_style}");
                }

            }
        }.toString().concat("limit #{head},#{rear}");

    };
    }

