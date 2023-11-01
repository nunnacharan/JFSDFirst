package com.example.demo.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.*;
import com.example.demo.repository.*;
@Service
public class EmployeeServiceImpl implements EmployeeService
{
	@Autowired
	private EmployeeRepository employeeRepository;
	

	@Override
	public String addemployee(Employee emp) {
	
		employeeRepository.save(emp);
		return "Employee Registered Successfully";
		
	}

	@Override
	public String updateemployee(Employee emp) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Employee viewemployeebyid(int eid) 
	{
		Optional<Employee> obj = employeeRepository.findById(eid);    
	    
	    if(obj.isPresent())
	    {
	      Employee emp = obj.get();
	      return emp;
	    }
	    else
	    {
	      return null;
	    }
	}

	@Override
	public Employee checkemplogin(String email, String pwd) {
		return employeeRepository.checkemplogin(email, pwd);
		
	}

}
