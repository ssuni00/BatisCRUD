package com.example;

import java.util.Date;

public class MarketVO {

    private String sellername;
    private String product;
    private int price;
    private String category;
    private String location;
    private String dealtime;
    private Date regdate;
    private int seq;
    private String detail;

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getSellername() {
        return sellername;
    }

    public void setSellername(String sellername) {
        this.sellername = sellername;
    }

    public String getProduct() {
        return product;
    }

    public void setProduct(String product) {
        this.product = product;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getDealtime() {
        return dealtime;
    }

    public void setDealtime(String dealtime) {
        this.dealtime = dealtime;
    }

    public Date getRegdate() {
        return regdate;
    }

    public void setRegdate(Date regdate) {
        this.regdate = regdate;
    }

    public int getSeq() {
        return seq;
    }

    public void setSeq(int seq) {
        this.seq = seq;
    }


}
