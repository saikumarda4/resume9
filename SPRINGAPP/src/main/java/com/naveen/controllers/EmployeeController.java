package com.naveen.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.naveen.pojo.Department;
import com.naveen.pojo.Employee;
import com.naveen.service.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeService service;
	
	@RequestMapping("/" )
	public ModelAndView home()
	{
		return new ModelAndView("register", "reg", new Employee());
	}
	
	@RequestMapping(value = "/reg")
	public ModelAndView register(@Valid @ModelAttribute("reg")Employee emp,BindingResult result,HttpServletRequest request)
	{
		if(result.hasErrors())
		{
			return new ModelAndView ("register","message","Invalid Registration Details..!");
		}
		else{
		Department dept =new Department();
		dept.setName(request.getParameter("name"));
		dept.setRole(request.getParameter("role"));
		emp.setDept(dept);
		request.getSession().setAttribute("employees", emp);
		service.regEmp(emp);
		return new ModelAndView("dashboard","details",emp);
		}
	}
	
	@RequestMapping("/login")
	public ModelAndView login(HttpServletRequest request)
	{
		String username = request.getParameter("name");
		String password = request.getParameter("password");
		Employee emp =service.login(username, password);
		if(emp==null)
			return new ModelAndView("register","message","INVALID CREDENTIALS...!");
		else
				request.getSession().setAttribute("employees", emp);
				return new ModelAndView("dashboard","details",emp);
		
	}
	@RequestMapping("/delete")
	public ModelAndView deleteEmployee(@RequestParam("id") int id,HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		service.deleteEmp(id);
		request.getSession().invalidate();
		return new ModelAndView("register","message","YOUR ACCOUNT HAS BEEN DELETED SUCCESSFULLY");
	}
	@RequestMapping("/findById")
	public ModelAndView findById(@RequestParam("id") int id)
	{
		Employee emp = service.empById(id);
		if(emp!=null)
			return new ModelAndView("find","details",emp);
		else
			return new ModelAndView("find","message","Employee with given id not found");
	}
	/*@RequestMapping("/edit")
	public ModelAndView editEmployee(@RequestParam("id") int id)
	{
		//Employee employee = new Employee(id);
		emp.setId(id);
		service.regEmp(emp);
		return new ModelAndView("registeredit","id",id);
	}*/
	@RequestMapping("/edit")
	public ModelAndView successEditEmployee(@Valid @ModelAttribute("reg") Employee emp,BindingResult result,HttpServletRequest request)
	{
		if(result.hasErrors())
		{
			return new ModelAndView ("edit","message","Invalid Registration Details..!");
		}
		
		Employee employee = new Employee();
		Department dept =new Department();
		dept.setName(request.getParameter("name"));
		System.out.println(request.getParameter("name"));
		dept.setRole(request.getParameter("role"));
		System.out.println(request.getParameter("role"));
		
		emp.setId(Integer.parseInt(request.getParameter("id")));
		emp.setDept(((Employee)request.getSession().getAttribute("employees")).getDept());
		emp.setDept(dept);
		
		service.editEmp(emp);	
		request.getSession().setAttribute("employees", emp);
		return new ModelAndView("dashboard","message","Edited Successfully");
	}
}
