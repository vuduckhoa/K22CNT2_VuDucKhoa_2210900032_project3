package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.springmvc.beans.Vdk_quantri;

public class VDK_quantridao {
    JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

   
    public int save(Vdk_quantri p) {
        String sql = "insert into Vdk_quantri (vdk_TaiKhoan, vdk_MatKhau, vdk_TrangThai) values (?, ?, ?)";
        return template.update(sql, p.getVdk_TaiKhoan(), p.getVdk_MatKhau(), p.isVdk_TrangThai());
    }

   
    public int update(Vdk_quantri p) {
        String sql = "update Vdk_quantri set vdk_TaiKhoan = ?, vdk_MatKhau = ?, vdk_TrangThai = ? where id = ?";
        return template.update(sql, p.getVdk_TaiKhoan(), p.getVdk_MatKhau(), p.isVdk_TrangThai(), p.getId());
    }

   
    public int delete(int id) {
        String sql = "delete from Vdk_quantri where id = ?";
        return template.update(sql, id);
    }
    public int deletegiohang(int id) {
        String sql = "delete from Vdk_quantri where id = ?";
        return template.update(sql, id);
    }

    
    public Vdk_quantri getEmpById(int id) {
        String sql = "select * from Vdk_quantri where id = ?";
        return template.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<Vdk_quantri>(Vdk_quantri.class));
    }

    
    public List<Vdk_quantri> getEmployees() {
        String sql = "select * from sanpham";
        return template.query(sql, new RowMapper<Vdk_quantri>() {
            public Vdk_quantri mapRow(ResultSet rs, int row) throws SQLException {
            	Vdk_quantri e = new Vdk_quantri();
                e.setId(rs.getInt("id"));
                e.setVdk_TaiKhoan(rs.getString("vdk_Taikhoan"));
                e.setVdk_MatKhau(rs.getString("vdk_Matkhau"));
                e.setVdk_TrangThai(rs.getBoolean("vdk_Trangthai"));
                return e;
            }
        });
    }
}
