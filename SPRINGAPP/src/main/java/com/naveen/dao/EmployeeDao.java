package com.naveen.dao;



import java.util.List;

import com.naveen.pojo.Employee;


public interface EmployeeDao 
{
		void registerEmployee(Employee emp);
	    List<Employee> loginEmployee(String name , String password);
	    void deleteEmployee(int id);
	    Employee findById(int id);
	    void editEmployee(Employee emp);
}
