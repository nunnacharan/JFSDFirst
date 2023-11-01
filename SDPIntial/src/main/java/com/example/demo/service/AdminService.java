package com.example.demo.service;

import java.util.List;

import com.example.demo.model.*;


public interface AdminService 

{
  public List<Employee> viewallemps();
  public List<Contact> viewallmess();
  public String deleteemp(int eid);
  public Employee viewempbyid(int eid);
  public Admin checkadminlogin(String auname,String apwd);
  //login and session managements
}