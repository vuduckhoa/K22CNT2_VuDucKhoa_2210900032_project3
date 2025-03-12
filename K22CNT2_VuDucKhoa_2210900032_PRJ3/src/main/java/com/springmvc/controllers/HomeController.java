package com.springmvc.controllers;

import java.net.URLEncoder;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.springmvc.beans.Vdk_giohang;
import com.springmvc.beans.Vdk_sanpham;
import com.springmvc.dao.Vdk_sanphamdao;

@Controller  
public class HomeController {  
    
    @Autowired  
    Vdk_sanphamdao dao;

    @GetMapping("/giohang")
    public String showCart(HttpSession session, Model model) {
        List<Vdk_giohang> cartItems = (List<Vdk_giohang>) session.getAttribute("cartItems");
        if (cartItems == null) {
            cartItems = new ArrayList<>();
        }
        model.addAttribute("cartItems", cartItems);
        model.addAttribute("totalAmount", calculateTotal(cartItems));
        return "giohang";
    }

    @GetMapping("/add-to-cart")
    public String addToCart(@RequestParam int id, 
                            @RequestParam String vdk_name, 
                            @RequestParam String vdk_hinhanh, 
                            @RequestParam int vdk_gia, 
                            HttpSession session) {
        List<Vdk_giohang> cartItems = (List<Vdk_giohang>) session.getAttribute("cartItems");
        if (cartItems == null) {
            cartItems = new ArrayList<>();
        }
        boolean exists = false;
        for (Vdk_giohang item : cartItems) {
            if (item.getId() == id) {
                item.setVdk_soluong(item.getVdk_soluong() + 1);
                exists = true;
                break;
            }
        }
        if (!exists) {
            cartItems.add(new Vdk_giohang(id, vdk_name, vdk_hinhanh, vdk_gia, 1));
        }
        session.setAttribute("cartItems", cartItems);
        return "redirect:/giohang";
    }

    @GetMapping("/xoagiohang/{id}")
    public String deletegiohang(@PathVariable int id, HttpSession session) {
        List<Vdk_giohang> cartItems = (List<Vdk_giohang>) session.getAttribute("cartItems");
        if (cartItems != null) {
            cartItems.removeIf(item -> item.getId() == id);
            session.setAttribute("cartItems", cartItems);
        }
        return "redirect:/giohang";
    }

    private int calculateTotal(List<Vdk_giohang> cartItems) {
        int total = 0;
        for (Vdk_giohang item : cartItems) {
            total += item.getVdk_gia() * item.getVdk_soluong();
        }
        return total;
    }

    @GetMapping("/saveform")
    public String showform(Model m) {
        m.addAttribute("command", new Vdk_sanpham());
        return "saveform";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute("user") Vdk_sanpham vdk_sanpham) {
        dao.save(vdk_sanpham);
        return "redirect:/viewform";
    }

    @GetMapping("/viewform")
    public String viewemp(Model m) {
        List<Vdk_sanpham> list = dao.getEmployees();
        m.addAttribute("list", list);
        return "viewform";
    }

    @GetMapping("/sua/{id}")
    public String edit(@PathVariable int id, Model m) {
        Vdk_sanpham vdk_sanpham = dao.getEmpById(id);
        m.addAttribute("command", vdk_sanpham);
        return "editform";
    }

    @PostMapping("/luu")
    public String luu(@ModelAttribute("user") Vdk_sanpham vdk_sanpham) {
        dao.update(vdk_sanpham);
        return "redirect:/viewform";
    }

    @GetMapping("/xoa/{id}")  
    public String delete(@PathVariable int id) {
        dao.delete(id);
        return "redirect:/viewform";
    }

    @GetMapping("/thanhtoan")
    public String thanhToan(HttpSession session, Model model) {
        List<Vdk_giohang> cartItems = (List<Vdk_giohang>) session.getAttribute("cartItems");
        if (cartItems == null || cartItems.isEmpty()) {
            return "redirect:/giohang";
        }
        model.addAttribute("cartItems", cartItems);
        model.addAttribute("totalAmount", calculateTotal(cartItems));
        return "thanhtoan";
    }


  

    @PostMapping("/xulythanhtoan")
    public String xuLyThanhToan(@RequestParam String paymentMethod, HttpSession session, Model model) {
        List<Vdk_giohang> cartItems = (List<Vdk_giohang>) session.getAttribute("cartItems");
        if (cartItems == null || cartItems.isEmpty()) {
            return "redirect:/giohang";
        }

        int totalAmount = calculateTotal(cartItems);
        String paymentUrl = "";

        switch (paymentMethod) {
            case "VNPay":
                paymentUrl = "https://sandbox.vnpayment.vn/payment?amount=" + totalAmount + "&info=Thanh+toan+don+hang";
                break;
            case "NganHang":
                try {
                    String bankCode = "MB";
                    String accountNumber = "270820004";
                    String paymentInfo = URLEncoder.encode("khoadeptrai", "UTF-8");

                    paymentUrl = "https://img.vietqr.io/image/" + bankCode + "-" + accountNumber + 
                                 "-compact.png?amount=" + totalAmount + "&addInfo=" + paymentInfo + "&currency=VND";
                } catch (Exception e) {
                    e.printStackTrace();
                }
                break;
        }

        model.addAttribute("cartItems", cartItems);
        model.addAttribute("totalAmount", totalAmount);
        model.addAttribute("paymentMethod", paymentMethod);
        model.addAttribute("paymentUrl", paymentUrl);

        return "xulythanhtoan";
    }
    @PostMapping("/thanhtoan-thanhcong")
    public String thanhToanThanhCong(HttpSession session, Model model) {
        // Lấy giỏ hàng từ session
        List<Vdk_giohang> cartItems = (List<Vdk_giohang>) session.getAttribute("cartItems");

        if (cartItems == null || cartItems.isEmpty()) {
            return "redirect:/giohang"; // Nếu giỏ hàng trống, quay lại giỏ hàng
        }

        // Xóa giỏ hàng sau khi thanh toán thành công
        session.removeAttribute("cartItems");

        // Chuyển hướng đến trang xác nhận thanh toán
        model.addAttribute("message", "Thanh toán thành công!");
        return "xacnhanthanhtoan"; // Trả về trang xác nhận thanh toán
    }
}