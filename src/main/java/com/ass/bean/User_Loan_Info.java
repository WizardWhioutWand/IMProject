package com.ass.bean;

public class User_Loan_Info {
    //1用户id
    int userId;
    //2用户名
    String userName;
    //3真实姓名
    String realName;
    //4分公司
    String resCompany;
    //信用等级
    public String credit_Rating;
    //用户资金
    public int money;
    //5借款编号
    int  loanId;
    //6借款标题
    String title;
    //7借款金额
    int amount;
    //8年利率
    float rate;
    //9借款期限
    float deadline;
    //10还款方式
    String modeOfRepayment;
    //11借款类型
    String typeOfLoan;
    //12状态
    String status;
    //13借款对象
    String borrower;
    //14借款用途
    String purpose;
    //15投标上限
    String bid_limit;
    //16有效时间
    String borrow_valid_time;
    //17借款描述
    String borrow_contents;
    public User_Loan_Info() {
    }

    public String getBid_limit() {
        return bid_limit;
    }

    public String getBorrow_contents() {
        return borrow_contents;
    }

    public void setBorrow_contents(String borrow_contents) {
        this.borrow_contents = borrow_contents;
    }

    public String getBorrow_valid_time() {
        return borrow_valid_time;
    }

    public void setBorrow_valid_time(String borrow_valid_time) {
        this.borrow_valid_time = borrow_valid_time;
    }

    public void setBid_limit(String bid_limit) {
        this.bid_limit = bid_limit;
    }

    public int getUserId() {
        return userId;
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

    public void setCredit_Rating(String credit_Rating) {
        this.credit_Rating = credit_Rating;
    }

    public String getPurpose() {
        return purpose;
    }

    public void setPurpose(String purpose) {
        this.purpose = purpose;
    }

    public String getBorrower() {
        return borrower;
    }

    public void setBorrower(String borrower) {
        this.borrower = borrower;
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

    public int getLoanId() {
        return loanId;
    }

    public void setLoanId(int loanId) {
        this.loanId = loanId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public float getRate() {
        return rate;
    }

    public void setRate(float rate) {
        this.rate = rate;
    }

    public float getDeadline() {
        return deadline;
    }

    public void setDeadline(float deadline) {
        this.deadline = deadline;
    }

    public String getModeOfRepayment() {
        return modeOfRepayment;
    }

    public void setModeOfRepayment(String modeOfRepayment) {
        this.modeOfRepayment = modeOfRepayment;
    }

    public String getTypeOfLoan() {
        return typeOfLoan;
    }

    public void setTypeOfLoan(String typeOfLoan) {
        this.typeOfLoan = typeOfLoan;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
