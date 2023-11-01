package com.example.demo.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="contact_us")
public class Contact 
{
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name="user_id")
  private int id;
  @Column(name="name",nullable=false,length = 50)
  private String name;
  
  
  @Column(name="email",nullable=false,unique = true,length = 30)
  private String email;
  
  @Column(name="message",nullable=false)
  private String message;
  
  @Column(name="active",nullable=false)
  private boolean active; // true or false
  public int getId() {
    return id;
  }
  public void setId(int id) {
    this.id = id;
  }
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }
  
  public String getEmail() {
    return email;
  }
  public void setEmail(String email) {
    this.email = email;
  }

  public String getMessage() {
    return message;
  }
  public void setMessage(String message) {
    this.message = message;
  }
  
  public boolean isActive() {
    return active;
  }
  public void setActive(boolean active) {
    this.active = active;
  }
  @Override
  public String toString() {
    return "Employee [id=" + id + ", name=" + name + ", email=" + email + ", message=" + message +  ", active=" + active + "]";
  }
}