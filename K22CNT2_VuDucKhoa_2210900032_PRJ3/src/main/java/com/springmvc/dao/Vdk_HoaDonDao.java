package com.springmvc.dao;

import java.sql.Timestamp;
import java.util.Date;
import org.springframework.jdbc.core.JdbcTemplate;
import com.springmvc.beans.Vdk_HoaDon;

public class Vdk_HoaDonDao {
    private JdbcTemplate template;

    // **Setter để Spring Inject `JdbcTemplate`**
    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    // **Phương thức lưu hóa đơn vào database**
    public int save(Vdk_HoaDon hoadon) {
        String sql = "INSERT INTO vdk_hoadon (vdk_khachhang, vdk_tongtien, vdk_phuongthucthanhtoan, vdk_ngaytao) VALUES (?, ?, ?, ?)";
        
        return template.update(sql, 
            hoadon.getVdk_khachhang(), 
            hoadon.getVdk_tongtien(), 
            hoadon.getVdk_phuongthucthanhtoan(), 
            new Timestamp(new Date().getTime()) // Lấy thời gian hiện tại
        );
    }
}
