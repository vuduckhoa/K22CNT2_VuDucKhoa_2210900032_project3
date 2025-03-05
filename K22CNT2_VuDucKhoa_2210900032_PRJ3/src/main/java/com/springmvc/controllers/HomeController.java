package com.springmvc.controllers;

import java.util.ArrayList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springmvc.beans.Vdk_giohang;
import com.springmvc.beans.Vdk_sanpham;
import com.springmvc.dao.Vdk_sanphamdao;
import javax.servlet.http.HttpSession;

@Controller  
public class HomeController {  

    @Autowired  
    Vdk_sanphamdao dao; // Inject UserDao for data operations
    // Giỏ hàng tạm thời lưu trong bộ nhớ (nên chuyển vào session trong môi trường thực tế)
    // Sử dụng session để lưu giỏ hàng
    @GetMapping("/giohang")
    public String showCart(HttpSession session, Model model) {
        List<Vdk_giohang> cartItems = (List<Vdk_giohang>) session.getAttribute("cartItems");
        if (cartItems == null) {
            cartItems = new ArrayList<>();
        }

        // Kiểm tra dữ liệu hình ảnh trong session
        for (Vdk_giohang item : cartItems) {
            System.out.println("Sản phẩm: " + item.getVdk_name() + " | Hình ảnh: " + item.getVdk_hinhanh());
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
        
        System.out.println("Thêm sản phẩm vào giỏ: " + vdk_name + " | Ảnh: " + vdk_hinhanh); // Debug log

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
            cartItems.removeIf(item -> item.getId() == id); // Xóa sản phẩm theo ID
            session.setAttribute("cartItems", cartItems); // Cập nhật lại giỏ hàng trong session
        }
        return "redirect:/giohang"; // Quay lại trang giỏ hàng
    }

    // Tính tổng số tiền trong giỏ hàng
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
        return "saveform"; // Hiển thị form lưu sản phẩm
    }

    @PostMapping("/save")
    public String save(@ModelAttribute("user") Vdk_sanpham vdk_sanpham) {
        dao.save(vdk_sanpham);
        return "redirect:/viewform"; // Sau khi lưu xong, chuyển hướng đến danh sách
    }

    @GetMapping("/viewform")
    public String viewemp(Model m) {
        List<Vdk_sanpham> list = dao.getEmployees();
        m.addAttribute("list", list);
        return "viewform"; // Hiển thị danh sách sản phẩm
    }

    @GetMapping("/sua/{id}")
    public String edit(@PathVariable int id, Model m) {
    	Vdk_sanpham vdk_sanpham = dao.getEmpById(id);
        m.addAttribute("command", vdk_sanpham);
        return "editform"; // Hiển thị form chỉnh sửa
    }

    @PostMapping("/luu")
    public String luu(@ModelAttribute("user") Vdk_sanpham vdk_sanpham) {
        dao.update(vdk_sanpham); // Cập nhật thông tin sản phẩm
        return "redirect:/viewform"; // Sau khi lưu, chuyển hướng về danh sách
    }

    @GetMapping("/xoa/{id}")  
    public String delete(@PathVariable int id) {
        dao.delete(id); // Xóa sản phẩm theo ID
        return "redirect:/viewform"; // Sau khi xóa, quay lại trang danh sách
    }
}