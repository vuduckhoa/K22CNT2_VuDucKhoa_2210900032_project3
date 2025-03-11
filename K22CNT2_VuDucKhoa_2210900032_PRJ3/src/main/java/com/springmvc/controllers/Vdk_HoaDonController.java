package com.springmvc.controllers;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.springmvc.beans.Vdk_HoaDon;
import com.springmvc.beans.Vdk_giohang;
import com.springmvc.dao.Vdk_HoaDonDao;

@Controller
public class Vdk_HoaDonController {

    @Autowired
    private Vdk_HoaDonDao hoadonDao;

    @PostMapping("/thanhtoan")  // Xử lý thanh toán khi nhấn nút
    public String thanhToan(HttpSession session, Model model) {
        // Lấy danh sách sản phẩm từ giỏ hàng
        List<Vdk_giohang> cartItems = (List<Vdk_giohang>) session.getAttribute("cartItems");

        // Kiểm tra nếu giỏ hàng rỗng
        if (cartItems == null || cartItems.isEmpty()) {
            model.addAttribute("error", "Giỏ hàng của bạn đang trống!");
            return "redirect:/giohang";
        }

        // Tính tổng tiền
        int totalAmount = 0;
        for (Vdk_giohang item : cartItems) {
            totalAmount += item.getVdk_gia() * item.getVdk_soluong();
        }

        // Tạo hóa đơn mới
        Vdk_HoaDon hoadon = new Vdk_HoaDon();
        hoadon.setVdk_khachhang("Khách hàng A"); // Cập nhật thông tin khách hàng nếu có đăng nhập
        hoadon.setVdk_tongtien(totalAmount);
        hoadon.setVdk_phuongthucthanhtoan("Tiền mặt"); // Hoặc lấy từ form
        hoadon.setVdk_ngaytao(new Timestamp(new Date().getTime()));

        // Lưu vào database
        hoadonDao.save(hoadon);

        // Xóa giỏ hàng sau khi thanh toán
        session.removeAttribute("cartItems");

        // Chuyển hướng đến trang xác nhận thành công
        return "redirect:/hoadon_success";
    }

    @GetMapping("/hoadon_success")  // Xử lý GET /hoadon_success
    public String hoadonSuccess() {
        return "giohang"; // Trả về trang hoadon_success.jsp
    }
}
