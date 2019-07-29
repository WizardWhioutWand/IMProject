package com.ass.bean;

public class Loan {
    //用户id
    int userId;
    //1借款编号
    int  loanId;
    //9借款对象
    String borrower;
    //10借款用途
    String purpose;
    //7借款类型
    String typeOfLoan;
    //11投标上限
    String bid_limit;
    //2借款标题
    String title;
    //3借款金额
   int amount;
    //4年利率
    float rate;
    //12有效时间
    String borrow_valid_time;
    //5借款期限
    float deadline;
    //6还款方式
    String modeOfRepayment;
    //8状态
    String status;
    //13借款描述
    String borrow_contents;

    public Loan() {
        this.status="未审核";
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
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

    public String getBorrower() {
        return borrower;
    }

    public void setBorrower(String borrower) {
        this.borrower = borrower;
    }

    public String getPurpose() {
        return purpose;
    }

    public void setPurpose(String purpose) {
        this.purpose = purpose;
    }

    public String getBid_limit() {
        return bid_limit;
    }

    public void setBid_limit(String bid_limit) {
        this.bid_limit = bid_limit;
    }

    public String getBorrow_valid_time() {
        return borrow_valid_time;
    }

    public void setBorrow_valid_time(String borrow_valid_time) {
        this.borrow_valid_time = borrow_valid_time;
    }

    public String getBorrow_contents() {
        return borrow_contents;
    }

    public void setBorrow_contents(String borrow_contents) {
        this.borrow_contents = borrow_contents;
    }

    @Override
    public String toString() {
        return "Loan{" +
                "userId=" + userId +
                ", loanId=" + loanId +
                ", borrower='" + borrower + '\'' +
                ", purpose='" + purpose + '\'' +
                ", typeOfLoan='" + typeOfLoan + '\'' +
                ", bid_limit='" + bid_limit + '\'' +
                ", title='" + title + '\'' +
                ", amount=" + amount +
                ", rate=" + rate +
                ", borrow_valid_time='" + borrow_valid_time + '\'' +
                ", deadline='" + deadline + '\'' +
                ", modeOfRepayment='" + modeOfRepayment + '\'' +
                ", status='" + status + '\'' +
                ", borrow_contents='" + borrow_contents + '\'' +
                '}';
    }
}
