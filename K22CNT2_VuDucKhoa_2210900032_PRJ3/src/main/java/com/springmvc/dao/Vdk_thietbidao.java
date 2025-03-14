package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.springmvc.beans.Vdk_thietbi;

@Repository
public class Vdk_thietbidao {
	 JdbcTemplate template;

	    public void setTemplate(JdbcTemplate template) {
	        this.template = template;
	    }

	    // Thêm thiết bị
	    public int save(Vdk_thietbi t) {
	        String sql = "INSERT INTO vdk_thietbi (vdk_name, vdk_soluong, vdk_hinhanh, vdk_trangthai) VALUES (?, ?, ?, ?)";
	        return template.update(sql, t.getVdk_name(), t.getVdk_soluong(), t.getVdk_hinhanh(), t.isVdk_trangthai());
	    }

	    // Cập nhật thiết bị
	    public int update(Vdk_thietbi t) {
	        String sql = "UPDATE vdk_thietbi SET vdk_name = ?, vdk_soluong = ?, vdk_hinhanh = ?, vdk_trangthai = ? WHERE id = ?";
	        return template.update(sql, t.getVdk_name(), t.getVdk_soluong(), t.getVdk_hinhanh(), t.isVdk_trangthai(), t.getId());
	    }

	    // Xóa thiết bị theo ID
	    public int delete(int id) {
	        String sql = "DELETE FROM vdk_thietbi WHERE id = ?";
	        return template.update(sql, id);
	    }

	    // Lấy một thiết bị theo ID
	    public Vdk_thietbi getThietBiById(int id) {
	        String sql = "SELECT * FROM vdk_thietbi WHERE id = ?";
	        return template.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<Vdk_thietbi>(Vdk_thietbi.class));
	    }

	    // Lấy danh sách tất cả thiết bị
	    public List<Vdk_thietbi> getAllThietBi() {
	        String sql = "SELECT * FROM vdk_thietbi";
	        return template.query(sql, new RowMapper<Vdk_thietbi>() {
	            public Vdk_thietbi mapRow(ResultSet rs, int row) throws SQLException {
	                Vdk_thietbi t = new Vdk_thietbi();
	                t.setId(rs.getInt("id"));
	                t.setVdk_name(rs.getString("vdk_name"));
	                t.setVdk_soluong(rs.getInt("vdk_soluong"));
	                t.setVdk_hinhanh(rs.getString("vdk_hinhanh"));
	                t.setVdk_trangthai(rs.getBoolean("vdk_trangthai"));
	                return t;
	            }
	        });
	    }
	}