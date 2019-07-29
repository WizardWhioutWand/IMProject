package com.ass.bean;

public class SearchBean {
    int  loanId;
    String userName;
    String title;
    String  realName;
    String  typeOfLoan;
    String  resCompany;

    public SearchBean() {

    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public int getLoanId() {
        return loanId;
    }

    public void setLoanId(int loanId) {
        this.loanId = loanId;
    }

    public String getTypeOfLoan() {
        return typeOfLoan;
    }

    public void setTypeOfLoan(String typeOfLoan) {
        this.typeOfLoan = typeOfLoan;
    }

    public String getResCompany() {
        return resCompany;
    }

    public void setResCompany(String resCompany) {
        this.resCompany = resCompany;
    }

    @Override
    public String toString() {
        return "SearchBean{" +
                "loanId=" + loanId +
                ", userName='" + userName + '\'' +
                ", title='" + title + '\'' +
                ", realName='" + realName + '\'' +
                ", typeOfLoan='" + typeOfLoan + '\'' +
                ", resCompany='" + resCompany + '\'' +
                '}';
    }
}
