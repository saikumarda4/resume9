package com.naveen.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

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
/**
 * @author Naveen
 *
 */
@Entity
@Table(name="dept")
public class Department {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int deptId;
	//@NotEmpty
	private String name;
	//@NotEmpty
	private String role;
	public Department(int deptId, String name, String role) {
		super();
		this.deptId = deptId;
		this.name = name;
		this.role = role;
	}
	public Department(String name, String role) {
		super();
		this.name = name;
		this.role = role;
	}
	public Department(int deptId) {
		super();
		this.deptId = deptId;
	}
	public Department() {
		super();
	}
	
	public int getDeptId() {
		return deptId;
	}
	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	@Override
	public String toString() {
		return "Department [deptId=" + deptId + ", name=" + name + ", role=" + role + "]";
	}
	

}
