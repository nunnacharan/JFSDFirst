package com.example.demo.service;

import com.example.demo.model.*;

public interface EmployeeService 
{
	public String addemployee(Employee emp);
	public String updateemployee(Employee emp);
	public Employee viewemployeebyid(int eid);
	public Employee checkemplogin(String email, String pwd);
	
}
