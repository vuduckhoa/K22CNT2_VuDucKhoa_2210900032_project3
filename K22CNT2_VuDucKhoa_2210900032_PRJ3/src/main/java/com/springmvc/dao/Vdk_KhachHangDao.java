package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.springmvc.beans.Vdk_khachhang;

@Repository
public class Vdk_KhachHangDao {
	@Autowired
	@Qualifier("jt") // Chỉ định bean đúng
	private JdbcTemplate template;


    // Thêm khách hàng
    public int save(Vdk_khachhang t) {
        String sql = "INSERT INTO vdk_khachhang (vdk_name, vdk_sdt, vdk_email, vdk_diachi) VALUES (?, ?, ?, ?)";
        return template.update(sql, t.getVdk_name(), t.getVdk_sdt(), t.getVdk_email(), t.getVdk_diaChi());
    }

    // Cập nhật thông tin khách hàng
    public int update(Vdk_khachhang t) {
        String sql = "UPDATE vdk_khachhang SET vdk_name = ?, vdk_sdt = ?, vdk_email = ?, vdk_diachi = ? WHERE id = ?";
        return template.update(sql, t.getVdk_name(), t.getVdk_sdt(), t.getVdk_email(), t.getVdk_diaChi(), t.getId());
    }

    // Xóa khách hàng theo ID
    public int delete(int id) {
        String sql = "DELETE FROM vdk_khachhang WHERE id = ?";
        return template.update(sql, id);
    }

    // Lấy một khách hàng theo ID (bắt lỗi nếu không tìm thấy)
    public Vdk_khachhang getKhachHangById(int id) {
        String sql = "SELECT * FROM vdk_khachhang WHERE id = ?";
        try {
            return template.queryForObject(sql, new Object[]{id}, 
                new BeanPropertyRowMapper<>(Vdk_khachhang.class));
        } catch (EmptyResultDataAccessException e) {
            return null; // Trả về null nếu không tìm thấy khách hàng
        }
    }

    // Lấy danh sách tất cả khách hàng
    public List<Vdk_khachhang> getAllKhachhang() {
        String sql = "SELECT * FROM vdk_khachhang";
        return template.query(sql, new RowMapper<Vdk_khachhang>() {
            public Vdk_khachhang mapRow(ResultSet rs, int row) throws SQLException {
                Vdk_khachhang t = new Vdk_khachhang();
                t.setId(rs.getInt("id"));
                t.setVdk_name(rs.getString("vdk_name"));
                t.setVdk_sdt(rs.getString("vdk_sdt"));
                t.setVdk_email(rs.getString("vdk_email"));
                t.setVdk_diaChi(rs.getString("vdk_diachi"));
                return t;
            }
        });
    }
}
