package com.naveen.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.naveen.dao.EmployeeDao;
import com.naveen.pojo.Employee;
@Service("employeeServiceImpl")
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeDao dao;

	public void regEmp(Employee emp) {
		 dao.registerEmployee(emp);
		
	}

	public Employee login(String un, String password) {
		List<Employee> list =dao.loginEmployee(un, password);
		Iterator itr = list.iterator();
		Employee employee=null;
		while(itr.hasNext())
		{
			Employee emp = (Employee)itr.next();
		    employee = new Employee();
			employee.setId(emp.getId());
			employee.setUserName(emp.getUserName());
			employee.setPassword(emp.getPassword());
			employee.setEmail(emp.getEmail());
			employee.setMobile(emp.getMobile());
			employee.setDept(emp.getDept());
			employee.setQualification(emp.getQualification());
			employee.setExperience(emp.getExperience());
		}
		return employee;
	}

	public void deleteEmp(int id) {
		dao.deleteEmployee(id);
		
	}

	public Employee empById(int id) {
		
		return dao.findById(id);
	}

	public void editEmp(Employee emp) {
		dao.editEmployee(emp);
		
	}
	
	
	
}
