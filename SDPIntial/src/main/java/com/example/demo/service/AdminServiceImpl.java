package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.*;

import com.example.demo.repository.*;

@Service
public class AdminServiceImpl implements AdminService
{
  @Autowired
  private AdminRepository adminRepository;
  
  @Autowired
  private EmployeeRepository employeeRepository;
  @Autowired
  private ContactRepository contactRepository;
  
  @Override
  public List<Employee> viewallemps() 
  {
    return employeeRepository.findAll();
  }
  @Override
  public List<Contact> viewallmess()
  {
    return contactRepository.findAll();
  }

  @Override
  public String deleteemp(int eid) 
  {
    Optional<Employee> obj = employeeRepository.findById(eid);
      
      String msg = null;
      
      if(obj.isPresent())
      {
        Employee emp = obj.get();
        employeeRepository.delete(emp);
        msg = "Employee Deleted Successfully";
      }
      else
      {
        msg = "Employee Not Found";
      }
      
      return msg;
  }

@Override
public Employee viewempbyid(int eid) {
  
  Optional<Employee> obj = employeeRepository.findById(eid);
  
  if(obj.isPresent())
  {
    Employee emp = obj.get();
    return emp;
  }
  else
  return null;
}

@Override
public Admin checkadminlogin(String auname, String apwd) {
  
  return adminRepository.checkadminlogin(auname, apwd);
}

}