package com.pojo;

public class MembersInfo {
	private int membersid;
	private String membersname;
	private String memberspassword;
	private String confirmpassword;
	private String email;
	public int getMembersid() {
		return membersid;
	}
	public void setMembersid(int membersid) {
		this.membersid = membersid;
	}
	public String getMembersname() {
		return membersname;
	}
	public void setMembersname(String membersname) {
		this.membersname = membersname;
	}
	public String getMemberspassword() {
		return memberspassword;
	}
	public void setMemberspassword(String memberspassword) {
		this.memberspassword = memberspassword;
	}
	public String getConfirmpassword() {
		return confirmpassword;
	}
	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
}
