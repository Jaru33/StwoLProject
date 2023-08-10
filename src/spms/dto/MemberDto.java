package spms.dto;

public class MemberDto {
	
	private int no;
	private String name;
	private String id;
	private String password;
	private String phoneNumber;
	private String email;
	private String createDate;
	private String modifiedDate;
	private String select1;
	private String select2;
	private String select3;
	private String select4;
	
	
	public MemberDto() {
		super();
	}


	public MemberDto(String name, String id, String password, String phoneNumber, String email) {
		super();
		this.name = name;
		this.id = id;
		this.password = password;
		this.phoneNumber = phoneNumber;
		this.email = email;
	}


	public MemberDto(int no, String name, String id, String password, String phoneNumber, String email,
			String createDate, String modifiedDate, String select1, String select2, String select3, String select4) {
		super();
		this.no = no;
		this.name = name;
		this.id = id;
		this.password = password;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.createDate = createDate;
		this.modifiedDate = modifiedDate;
		this.select1 = select1;
		this.select2 = select2;
		this.select3 = select3;
		this.select4 = select4;
	}


	public int getNo() {
		return no;
	}


	public void setNo(int no) {
		this.no = no;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getPhoneNumber() {
		return phoneNumber;
	}


	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getCreateDate() {
		return createDate;
	}


	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}


	public String getModifiedDate() {
		return modifiedDate;
	}


	public void setModifiedDate(String modifiedDate) {
		this.modifiedDate = modifiedDate;
	}


	public String getSelect1() {
		return select1;
	}


	public void setSelect1(String select1) {
		this.select1 = select1;
	}


	public String getSelect2() {
		return select2;
	}


	public void setSelect2(String select2) {
		this.select2 = select2;
	}


	public String getSelect3() {
		return select3;
	}


	public void setSelect3(String select3) {
		this.select3 = select3;
	}


	public String getSelect4() {
		return select4;
	}


	public void setSelect4(String select4) {
		this.select4 = select4;
	}


	@Override
	public String toString() {
		return "MemberDto [no=" + no + ", name=" + name + ", id=" + id + ", password=" + password + ", phoneNumber="
				+ phoneNumber + ", email=" + email + ", createDate=" + createDate + ", modifiedDate=" + modifiedDate
				+ ", select1=" + select1 + ", select2=" + select2 + ", select3=" + select3 + ", select4=" + select4
				+ "]";
	}
	
	
	

}
