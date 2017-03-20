package com.springlearning.employeecontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.springlearning.employeebean.EmployeeBean;
import com.springlearning.employeedao.EmployeeDao;

@Controller
public class EmployeeController{
	
	@Autowired  
    EmployeeDao dao;
	
	@RequestMapping("/")
	public ModelAndView showEmpDetails() {
		List<EmployeeBean> list = dao.getAllEmployees();
		ModelAndView model = new ModelAndView("employeeDetails");
		model.addObject("employeedetails", "Employee Details");
		model.addObject("emplist", list);
		
		return model;
	}
	
	@RequestMapping("/addEmployee")
	public ModelAndView addEmployee() {
		ModelAndView model = new ModelAndView("addEmployee");
		model.addObject("employeedetails", "Add Employee Details");
		return model;
	}
	
	@RequestMapping(value="/editEmployee/editsave", method=RequestMethod.POST)
	public ModelAndView saveEditEmployee(@ModelAttribute("bean") EmployeeBean bean) {
		dao.updateEmployee(bean);
		ModelAndView model = new ModelAndView("redirect:/");
		return model;
	}
	
	@RequestMapping(value="/saveEmployee",method=RequestMethod.POST)
	public ModelAndView saveEmployee(@ModelAttribute("emp") EmployeeBean bean) {
		dao.saveEmployee(bean);
		return new ModelAndView("redirect:/");
	}
	
	@RequestMapping(value="/editEmployee/{id}")
	public ModelAndView editEmployee(@PathVariable int id) {
		EmployeeBean bean = dao.editEmployee(id);
		ModelAndView model = new ModelAndView("editEmployee");
		model.addObject("employeedetails", "Edit Employee");
		model.addObject("bean", bean);
		return model;
	}
	
	@RequestMapping(value="/deleteEmployee/{id}")
	public ModelAndView deleteEmployee(@PathVariable("id") int id) {
		dao.deleteEmployee(id);
		return new ModelAndView("redirect:/");
	}
}
