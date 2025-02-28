package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.springmvc.beans.Vdk_sanpham;

public class Vdk_sanphamdao {
    JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

   
    public int save(Vdk_sanpham p) {
        String sql = "insert into vdk_sanpham (vdk_name,vdk_hinhanh, vdk_gia, vdk_soluong) values (?, ?, ?,?)";
        return template.update(sql, p.getVdk_name(), p.getVdk_hinhanh(), p.getVdk_gia(), p.getVdk_soluong());
    }

   
    public int update(Vdk_sanpham p) {
        String sql = "update vdk_sanpham set vdk_name = ?,vdk_hinhanh = ?, vdk_gia = ?, vdk_soluong = ? where id = ?";
        return template.update(sql, p.getVdk_name(), p.getVdk_hinhanh(), p.getVdk_gia(), p.getVdk_soluong(), p.getId());
    }

   
    public int delete(int id) {
        String sql = "delete from vdk_sanpham where id = ?";
        return template.update(sql, id);
    }
    public int deletegiohang(int id) {
        String sql = "delete from vdk_sanpham where id = ?";
        return template.update(sql, id);
    }

    
    public Vdk_sanpham getEmpById(int id) {
        String sql = "select * from vdk_sanpham where id = ?";
        return template.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<Vdk_sanpham>(Vdk_sanpham.class));
    }

    
    public List<Vdk_sanpham> getEmployees() {
        String sql = "select * from vdk_sanpham";
        return template.query(sql, new RowMapper<Vdk_sanpham>() {
            public Vdk_sanpham mapRow(ResultSet rs, int row) throws SQLException {
            	Vdk_sanpham e = new Vdk_sanpham();
                e.setId(rs.getInt("id"));
                e.setVdk_name(rs.getString("vdk_name"));
                e.setVdk_hinhanh(rs.getString("vdk_hinhanh"));
                e.setVdk_gia(rs.getInt("vdk_gia"));
                e.setVdk_soluong(rs.getInt("vdk_soluong"));
                return e;
            }
        });
    }
}
