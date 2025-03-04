package com.springmvc.dao;

import com.springmvc.beans.Vdk_quantri;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class VDK_quantridao {
    @Autowired
    private JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    // Thêm tài khoản admin mới (Đăng ký)
    public int save(Vdk_quantri p) {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        String hashedPassword = encoder.encode(p.getVdk_MatKhau()); // Băm mật khẩu

        String sql = "INSERT INTO VDK_quantri (vdk_TaiKhoan, vdk_MatKhau, vdk_TrangThai) VALUES (?, ?, ?)";
        return template.update(sql, p.getVdk_TaiKhoan(), hashedPassword, p.isVdk_TrangThai());
    }

    // Cập nhật thông tin admin
    public int update(Vdk_quantri p) {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        String hashedPassword = encoder.encode(p.getVdk_MatKhau()); // Băm mật khẩu mới

        String sql = "UPDATE VDK_quantri SET vdk_TaiKhoan = ?, vdk_MatKhau = ?, vdk_TrangThai = ? WHERE id = ?";
        return template.update(sql, p.getVdk_TaiKhoan(), hashedPassword, p.isVdk_TrangThai(), p.getId());
    }

    // Xóa admin theo ID
    public int delete(int id) {
        String sql = "DELETE FROM VDK_quantri WHERE id = ?";
        return template.update(sql, id);
    }

    // Lấy thông tin admin theo ID
    public Vdk_quantri getEmpById(int id) {
        String sql = "SELECT * FROM VDK_quantri WHERE id = ?";
        try {
            return template.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<>(Vdk_quantri.class));
        } catch (EmptyResultDataAccessException e) {
            return null; // Không tìm thấy admin
        }
    }

    // Lấy danh sách tất cả admin
    public List<Vdk_quantri> getEmployees() {
        String sql = "SELECT * FROM VDK_quantri";
        return template.query(sql, new RowMapper<Vdk_quantri>() {
            public Vdk_quantri mapRow(ResultSet rs, int row) throws SQLException {
                Vdk_quantri e = new Vdk_quantri();
                e.setId(rs.getInt("id"));
                e.setVdk_TaiKhoan(rs.getString("vdk_TaiKhoan"));
                e.setVdk_MatKhau(rs.getString("vdk_MatKhau"));
                e.setVdk_TrangThai(rs.getBoolean("vdk_TrangThai"));
                return e;
            }
        });
    }

    // Đăng nhập admin (kiểm tra mật khẩu bằng BCrypt)
    public Vdk_quantri getAdminByUsernameAndPassword(String username, String password) {
        String sql = "SELECT * FROM VDK_quantri WHERE vdk_TaiKhoan = ?";
        try {
            Vdk_quantri admin = template.queryForObject(sql, new Object[]{username}, new BeanPropertyRowMapper<>(Vdk_quantri.class));

            // Kiểm tra mật khẩu đã băm
            BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
            if (admin != null && encoder.matches(password, admin.getVdk_MatKhau())) {
                return admin; // Đăng nhập thành công
            }
            return null; // Sai mật khẩu
        } catch (EmptyResultDataAccessException e) {
            return null; // Không tìm thấy tài khoản
        }
    }
}
