package com.naveen.service;



import java.util.List;

import com.naveen.pojo.Employee;


public interface EmployeeService {
	
	void regEmp(Employee emp);
	Employee login(String un , String password);
	void deleteEmp(int id);
	Employee empById(int id);
	void editEmp(Employee emp);
}
