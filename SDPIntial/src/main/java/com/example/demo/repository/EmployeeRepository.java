package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.model.*;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee	, Integer>
{
	@Query("select e from Employee e where email=?1 and password=?2")
	public Employee checkemplogin(String email, String pwd);
	
}