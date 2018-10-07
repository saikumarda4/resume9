package com.naveen.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.naveen.pojo.Employee;

@Repository("employeeDaoImpl")
public class EmployeeDaoImpl implements EmployeeDao {

	@Autowired
	private SessionFactory factory;
	
	public void registerEmployee(Employee emp) {
		Session session = null;
		session= factory.openSession();
		Transaction tx =session.beginTransaction();
	    session.save(emp);
	    tx.commit();
	    
	    
	}

	public List<Employee> loginEmployee(String name, String password) {
		Session session = null;
		session = factory.openSession();
		String query = "from Employee e where e.userName=? and password =?";
		return session.createQuery(query).setParameter(0, name).setParameter(1, password).list();
		
	}

	public void deleteEmployee(int id) {
		Session session = null;
		session = factory.openSession();
		Transaction tx =session.beginTransaction();
		Employee emp = new Employee(id);
		session.delete(emp);
		tx.commit();
	}

	public Employee findById(int id) {
		Session session = null;
		session = factory.openSession();
		return (Employee)session.get(Employee.class, id);
		
	}

	public void editEmployee(Employee emp) {
		
		Session session = null;
		session= factory.openSession();
		Transaction tx =session.beginTransaction();
	    session.saveOrUpdate(emp);
	    tx.commit();
	    
	}

}
