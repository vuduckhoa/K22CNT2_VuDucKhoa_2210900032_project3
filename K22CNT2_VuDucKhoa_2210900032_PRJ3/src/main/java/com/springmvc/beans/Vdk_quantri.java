package com.springmvc.beans;

public class Vdk_quantri {
	private int id;
	private String vdk_TaiKhoan;
	private String vdk_MatKhau;
	private boolean vdk_TrangThai;
	
	/**
	 * @param id
	 * @param vdk_TaiKhoan
	 * @param vdk_MatKhau
	 * @param vdk_TrangThai
	 */
	public Vdk_quantri(int id, String vdk_TaiKhoan, String vdk_MatKhau, boolean vdk_TrangThai) {
		super();
		this.id = id;
		this.vdk_TaiKhoan = vdk_TaiKhoan;
		this.vdk_MatKhau = vdk_MatKhau;
		this.vdk_TrangThai = vdk_TrangThai;
	}
	
	/**
	 * 
	 */
	public Vdk_quantri() {
		super();
	}

	/**
	 * 
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the vdk_TaiKhoan
	 */
	public String getVdk_TaiKhoan() {
		return vdk_TaiKhoan;
	}
	/**
	 * @param vdk_TaiKhoan the vdk_TaiKhoan to set
	 */
	public void setVdk_TaiKhoan(String vdk_TaiKhoan) {
		this.vdk_TaiKhoan = vdk_TaiKhoan;
	}
	/**
	 * @return the vdk_MatKhau
	 */
	public String getVdk_MatKhau() {
		return vdk_MatKhau;
	}
	/**
	 * @param vdk_MatKhau the vdk_MatKhau to set
	 */
	public void setVdk_MatKhau(String vdk_MatKhau) {
		this.vdk_MatKhau = vdk_MatKhau;
	}
	/**
	 * @return the vdk_TrangThai
	 */
	public boolean isVdk_TrangThai() {
		return vdk_TrangThai;
	}
	/**
	 * @param vdk_TrangThai the vdk_TrangThai to set
	 */
	public void setVdk_TrangThai(boolean vdk_TrangThai) {
		this.vdk_TrangThai = vdk_TrangThai;
	}
	
}
