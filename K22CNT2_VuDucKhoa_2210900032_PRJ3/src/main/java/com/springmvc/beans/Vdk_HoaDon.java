package com.springmvc.beans;

import java.sql.Timestamp;

public class Vdk_HoaDon {
    private int id;
    private String vdk_khachhang;
    private int vdk_tongtien;
    private String vdk_phuongthucthanhtoan;
    private Timestamp vdk_ngaytao;

    // **Constructor mặc định (BẮT BUỘC PHẢI CÓ)**
    public Vdk_HoaDon() {
    }

    // **Constructor có tham số**
    public Vdk_HoaDon(int id, String vdk_khachhang, int vdk_tongtien, String vdk_phuongthucthanhtoan, Timestamp vdk_ngaytao) {
        this.id = id;
        this.vdk_khachhang = vdk_khachhang;
        this.vdk_tongtien = vdk_tongtien;
        this.vdk_phuongthucthanhtoan = vdk_phuongthucthanhtoan;
        this.vdk_ngaytao = vdk_ngaytao;
    }

    // **Getter và Setter**
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getVdk_khachhang() {
        return vdk_khachhang;
    }

    public void setVdk_khachhang(String vdk_khachhang) {
        this.vdk_khachhang = vdk_khachhang;
    }

    public int getVdk_tongtien() {
        return vdk_tongtien;
    }

    public void setVdk_tongtien(int vdk_tongtien) {
        this.vdk_tongtien = vdk_tongtien;
    }

    public String getVdk_phuongthucthanhtoan() {
        return vdk_phuongthucthanhtoan;
    }

    public void setVdk_phuongthucthanhtoan(String vdk_phuongthucthanhtoan) {
        this.vdk_phuongthucthanhtoan = vdk_phuongthucthanhtoan;
    }

    public Timestamp getVdk_ngaytao() {
        return vdk_ngaytao;
    }

    public void setVdk_ngaytao(Timestamp vdk_ngaytao) {
        this.vdk_ngaytao = vdk_ngaytao;
    }
}
