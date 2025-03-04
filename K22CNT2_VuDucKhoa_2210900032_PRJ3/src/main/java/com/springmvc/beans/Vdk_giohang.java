package com.springmvc.beans;

public class Vdk_giohang {
    private int id;
    private String vdk_name;
    private String vdk_hinhanh;
    private int vdk_gia;
    private int vdk_soluong;

    // ✅ Constructor Mặc Định (Không Tham Số)
    public Vdk_giohang() {}

    // ✅ Constructor Đầy Đủ (Dùng để tạo giỏ hàng)
    public Vdk_giohang(int id, String vdk_name, String vdk_hinhanh, int vdk_gia, int vdk_soluong) {
        this.id = id;
        this.vdk_name = vdk_name;
        this.vdk_hinhanh = vdk_hinhanh;
        this.vdk_gia = vdk_gia;
        this.vdk_soluong = vdk_soluong;
    }

    // ✅ Getter và Setter
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getVdk_name() { return vdk_name; }
    public void setVdk_name(String vdk_name) { this.vdk_name = vdk_name; }

    public String getVdk_hinhanh() { return vdk_hinhanh; }
    public void setVdk_hinhanh(String vdk_hinhanh) { this.vdk_hinhanh = vdk_hinhanh; }

    public int getVdk_gia() { return vdk_gia; }
    public void setVdk_gia(int vdk_gia) { this.vdk_gia = vdk_gia; }

    public int getVdk_soluong() { return vdk_soluong; }
    public void setVdk_soluong(int vdk_soluong) { this.vdk_soluong = vdk_soluong; }
}
