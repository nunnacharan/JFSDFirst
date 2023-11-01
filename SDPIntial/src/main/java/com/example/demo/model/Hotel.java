package com.example.demo.model;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="hotels")
public class Hotel 
{
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name="user_id")
  private int id;
  @Column(name="Image",nullable=false,length = 50)
  private String Imageid;
  @Column(name="name",nullable=true,length=50)
  private String name;
  
 
  public int getId() {
    return id;
  }
  public void setId(int id) {
    this.id = id;
  }
  public String getImageid() {
    return Imageid;
  }
  public void setImageid(String Imageid) {
    this.Imageid = Imageid;
  }
  
 
  public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
@Override
  public String toString() {
    return "Employee [id=" + id + ", name=" + name + "]";
  }
}
