package com.naveen.pojo;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.Valid;
import javax.validation.constraints.Email;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

/**
 * @author Naveen
 *
 */
/**
 * @author Naveen
 *
 */
/**
 * @author Naveen
 *
 */
@Entity
@Table(name="EmployeeDetails")
public class Employee {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	//@Size
	@NotEmpty(message="USER NAME REQUIRED")
	private String userName;
	
	//@Size
	@NotEmpty(message="USER NAME REQUIRED")
	private String password;
	
	@Email(message="INAVALID EMAIL FORMAT")
	private String email;
	@NotEmpty
	@Size(max=10,min=10)
	private String mobile;
	
	@ManyToOne(cascade=CascadeType.ALL,targetEntity=Department.class,fetch=FetchType.EAGER)
	@JoinColumn(name="deptid_fk",unique=true,nullable=false)
	@Valid
	private Department dept;
	@NotEmpty
	private String qualification;
	@Min(0) @Max(20)
//	@NotEmpty
	private int experience;
	public Employee() {
		super();
	}

	
	

	public Employee(String userName, String password,  String email, String mobile, 
			Department dept, String qualification, int experience) {
		super();
		this.userName = userName;
		this.password = password;
		
		this.email = email;
		this.mobile = mobile;
		
		this.dept = dept;
		this.qualification = qualification;
		this.experience = experience;
	}

	public Employee(int id, String userName, String password,  String email, String mobile, 
			Department dept, String qualification, int experience) {
		super();
		this.id = id;
		this.userName = userName;
		this.password = password;
		
		this.email = email;
		this.mobile = mobile;
		
		this.dept = dept;
		this.qualification = qualification;
		this.experience = experience;
	}

	public Employee(int id) {
		super();
		this.id = id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	//@Validated
	public Department getDept() {
		return dept;
	}
	
	public void setDept(Department dept) {
		this.dept = dept;
	}
	
	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qulification) {
		this.qualification = qulification;
	}

	public int getExperience() {
		return experience;
	}

	public void setExperience(int experience) {
		this.experience = experience;
	}

	@Override
	public String toString() {
		return "Employee [id=" + id + ", userName=" + userName + ", password=" + password + ",  email="
				+ email + ", mobile=" + mobile + ", dept=" + dept + ", qualification="
				+ qualification + ", experience=" + experience + "]";
	}




	
}
