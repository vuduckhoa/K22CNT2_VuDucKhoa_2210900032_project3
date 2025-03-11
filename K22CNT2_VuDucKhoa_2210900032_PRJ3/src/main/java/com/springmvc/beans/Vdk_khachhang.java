package com.springmvc.beans;

import java.util.List;

public class Vdk_khachhang {
	private int id;
    private String vdk_name;
    private String vdk_sdt;
    private String vdk_email;
    private String vdk_diaChi;
    
	/**
	 * @param id
	 * @param vdk_name
	 * @param vdk_sdt
	 * @param vdk_email
	 * @param vdk_diaChi
	 */
	public Vdk_khachhang(int id, String vdk_name, String vdk_sdt, String vdk_email, String vdk_diaChi) {
		super();
		this.id = id;
		this.vdk_name = vdk_name;
		this.vdk_sdt = vdk_sdt;
		this.vdk_email = vdk_email;
		this.vdk_diaChi = vdk_diaChi;
	}
	
	/**
	 * 
	 */
	public Vdk_khachhang() {
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
	 * @return the vdk_sdt
	 */
	public String getVdk_sdt() {
		return vdk_sdt;
	}
	/**
	 * @param vdk_sdt the vdk_sdt to set
	 */
	public void setVdk_sdt(String vdk_sdt) {
		this.vdk_sdt = vdk_sdt;
	}
	/**
	 * @return the vdk_email
	 */
	public String getVdk_email() {
		return vdk_email;
	}
	/**
	 * @param vdk_email the vdk_email to set
	 */
	public void setVdk_email(String vdk_email) {
		this.vdk_email = vdk_email;
	}
	/**
	 * @return the vdk_diaChi
	 */
	public String getVdk_diaChi() {
		return vdk_diaChi;
	}
	/**
	 * @param vdk_diaChi the vdk_diaChi to set
	 */
	public void setVdk_diaChi(String vdk_diaChi) {
		this.vdk_diaChi = vdk_diaChi;
	}
}
