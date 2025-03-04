package com.springmvc.beans;

public class Vdk_thietbi {
	private int id;
    private String vdk_name;
    private int vdk_soluong;
    private String vdk_hinhanh;
    private boolean vdk_trangthai;
    
	/**
	 * @param id
	 * @param vdk_name
	 * @param vdk_soluong
	 * @param vdk_hinhanh
	 * @param vdk_trangthai
	 */
	public Vdk_thietbi(int id, String vdk_name, int vdk_soluong, String vdk_hinhanh, boolean vdk_trangthai) {
		super();
		this.id = id;
		this.vdk_name = vdk_name;
		this.vdk_soluong = vdk_soluong;
		this.vdk_hinhanh = vdk_hinhanh;
		this.vdk_trangthai = vdk_trangthai;
	}
	
	/**
	 * 
	 */
	public Vdk_thietbi() {
		super();
	}

	/**
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
	 * @return the vdk_name
	 */
	public String getVdk_name() {
		return vdk_name;
	}
	/**
	 * @param vdk_name the vdk_name to set
	 */
	public void setVdk_name(String vdk_name) {
		this.vdk_name = vdk_name;
	}
	/**
	 * @return the vdk_soluong
	 */
	public int getVdk_soluong() {
		return vdk_soluong;
	}
	/**
	 * @param vdk_soluong the vdk_soluong to set
	 */
	public void setVdk_soluong(int vdk_soluong) {
		this.vdk_soluong = vdk_soluong;
	}
	/**
	 * @return the vdk_hinhanh
	 */
	public String getVdk_hinhanh() {
		return vdk_hinhanh;
	}
	/**
	 * @param vdk_hinhanh the vdk_hinhanh to set
	 */
	public void setVdk_hinhanh(String vdk_hinhanh) {
		this.vdk_hinhanh = vdk_hinhanh;
	}
	/**
	 * @return the vdk_trangthai
	 */
	public boolean isVdk_trangthai() {
		return vdk_trangthai;
	}
	/**
	 * @param vdk_trangthai the vdk_trangthai to set
	 */
	public void setVdk_trangthai(boolean vdk_trangthai) {
		this.vdk_trangthai = vdk_trangthai;
	}

}
