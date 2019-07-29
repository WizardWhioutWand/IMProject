package com.ass.bean;

public class InvestSearchBean {
    //typeOfLoan
    String borrow_type;
    //deadline
   Integer borrow_period;
    //amount
   Integer account_status;
    //modeOfRepayment;
    String  borrow_style;

    public InvestSearchBean() {
    }

    public String getBorrow_type() {
        return borrow_type;
    }

    public void setBorrow_type(String borrow_type) {
        this.borrow_type = borrow_type;
    }

    public int getBorrow_period() {
        if (borrow_period==null){
            return 0;
        }
        return borrow_period;
    }

    public void setBorrow_period(int borrow_period) {

        this.borrow_period = borrow_period;
    }

    public int getAccount_status() {
        if (account_status==null){
            return  0;
        }
        return account_status;
    }

    public void setAccount_status(int account_status) {
        this.account_status = account_status;
    }

    public String getBorrow_style() {
        return borrow_style;
    }

    public void setBorrow_style(String borrow_style) {
        this.borrow_style = borrow_style;
    }

    public boolean isNull(){
        if (this.account_status==0&&this.borrow_period==0&&this.borrow_style==""&&this.borrow_type==""){
            return true;
        }
            return false;
    }

    @Override
    public String toString() {
        return "InvestSearchBean{" +
                "borrow_type='" + borrow_type + '\'' +
                ", borrow_period='" + borrow_period + '\'' +
                ", account_status='" + account_status + '\'' +
                ", borrow_style='" + borrow_style + '\'' +
                '}';
    }
}
