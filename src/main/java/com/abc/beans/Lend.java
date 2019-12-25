package com.abc.beans;

import java.util.Date;

public class Lend{

    private Integer ser_num;
    private Integer book_id;
    private Integer reader_id;
    private Date lend_date;
    private Date back_date;

    public Lend() {
    }

    public Integer getSer_num() {
        return ser_num;
    }

    public void setSer_num(Integer ser_num) {
        this.ser_num = ser_num;
    }

    public Integer getBook_id() {
        return book_id;
    }

    public void setBook_id(Integer book_id) {
        this.book_id = book_id;
    }

    public Integer getReader_id() {
        return reader_id;
    }

    public void setReader_id(Integer reader_id) {
        this.reader_id = reader_id;
    }

    public Date getLend_date() {
        return lend_date;
    }

    public void setLend_date(Date lend_date) {
        this.lend_date = lend_date;
    }

    public Date getBack_date() {
        return back_date;
    }

    public void setBack_date(Date back_date) {
        this.back_date = back_date;
    }

    @Override
    public String toString() {
        return "Lend{" +
                "ser_num=" + ser_num +
                ", book_id=" + book_id +
                ", reader_id=" + reader_id +
                ", lend_date=" + lend_date +
                ", back_date=" + back_date +
                '}';
    }
}
