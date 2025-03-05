CREATE DATABASE K22CNT2_VuDucKhoa_2210900032_pj3;
USE K22CNT2_VuDucKhoa_2210900032_pj3;
CREATE TABLE vdk_sanpham (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vdk_name VARCHAR(100),
    vdk_gia INT,
    vdk_soluong INT,
    vdk_hinhanh VARCHAR(255) -- Lưu đường dẫn hoặc URL của hình ảnh
);

CREATE TABLE vdk_giohang (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vdk_idsanpham int,
    vdk_soluong INTEGER NOT NULL,
    FOREIGN KEY (vdk_idsanpham) REFERENCES vdk_sanpham (id)
);
CREATE TABLE VDK_quantri(
     ID INT AUTO_INCREMENT PRIMARY KEY,
     vdk_TaiKhoan VARCHAR(25) UNIQUE, 
     vdk_MatKhau VARCHAR(255), 
     vdk_TrangThai TINYINT
);
CREATE TABLE vdk_khachhang(
     ID INT AUTO_INCREMENT PRIMARY KEY,
     vdk_name VARCHAR(25) UNIQUE, 
     vdk_sdt VARCHAR(255), 
     vdk_email VARCHAR(255), 
     vdk_diachi VARCHAR(255)
);
CREATE TABLE vdk_thietbi (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vdk_name VARCHAR(100),
    vdk_soluong INT,
    vdk_hinhanh VARCHAR(255), 
    vdk_trangthai TINYINT
);



