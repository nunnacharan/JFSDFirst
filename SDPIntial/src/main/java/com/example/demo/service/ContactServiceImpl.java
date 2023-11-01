package com.example.demo.service;

import java.util.List;
import java.util.Optional;
import java.util.function.Function;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.repository.query.FluentQuery.FetchableFluentQuery;
import org.springframework.stereotype.Service;

import com.example.demo.model.Contact;
import com.example.demo.repository.AdminRepository;
import com.example.demo.repository.ContactRepository;
import com.example.demo.repository.EmployeeRepository;

@Service
public class ContactServiceImpl implements ContactService
{
  
  @Autowired
  private ContactRepository cr;

  
  public String addmess(Contact cc)
  {
    cr.save(cc);
    return "Message Was Success";
  }
}