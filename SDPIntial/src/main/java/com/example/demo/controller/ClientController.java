package com.example.demo.controller;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.*;
import com.example.demo.controller.*;
import com.example.demo.model.*;
import com.example.demo.repository.*;
import com.example.demo.service.*;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

@Controller
public class ClientController 
{
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private EmployeeService employeeService;
	@Autowired
	private ContactService contactService;
	
	@Autowired
	private HotelService hotelService;
	
	@GetMapping("/")
	public String main()
	{
		return "index";
	}
	@GetMapping("tourism")
	public String tourism()
	{
		return "tourism";
	}
	@GetMapping("success")
	public String success()
	{
		return "success";
	}
	
	@GetMapping("/about")
	public String about()
	{
		return "about";
	}
	@GetMapping("/termsandservice")
	public String termsandservice()
	{
		return "termsandservice";
	}
	@GetMapping("/services")
	public String services()
	{
		return "services";
	}
	@GetMapping("/empnavbar")
	public String empnavbar()
	{
		return "empnavbar";
	}
	@GetMapping("/hotels")
	public String hotels()
	{
		return "hotels";
	}
	@GetMapping("/hoteltaj")
	public String hoteltaj()
	{
		return "hoteltaj";
	}
	@GetMapping("/hotelnov")
	public String hotelnov()
	{
		return "hotelnov";
	}
	
	@GetMapping("/hotelitc")
	public String hotelitc(){
		return "hotelitc";
	}
	@GetMapping("/hotelhayath")
	public String hoteyath(){
		return "hotelhayath";
	}
	@GetMapping("/payment")
	public String payment()
	{
		return "payment";
	}
	@GetMapping("adminhotel")
	public String adminhotel()
	{
		return "adminhotel";
	}
	
	@PostMapping("addHotel")
	public ModelAndView uploadimage(HttpServletRequest request) {
	    
	    
		System.out.println("out");
	      ModelAndView mv = new ModelAndView("display");
	   
	      String msg=null;
	      try {
	    	  System.out.println("IN");
	          // Handle the uploaded image
	          Part file =  request.getPart("hotelImage");
	          if (file != null) {
	              String imageFileName = file.getSubmittedFileName();
	              
	              System.out.println("Selected Image: " + imageFileName);
	              
//	              
	              String uploadPath =  "D:/Spring/SDPIntial/src/main/webapp/images/"+ imageFileName;
	              try (FileOutputStream fos = new FileOutputStream(uploadPath);
	                   InputStream is = file.getInputStream()) {
	                  
	                  byte[] data = new byte[is.available()];
	                  is.read(data);
	                  fos.write(data);
	                  
	                  // File saved successfully
	                  
	                  // Create a Product object with the form field values
	                  Hotel h = new Hotel();
	                   // Use imageFileName as the product name
	                  h.setImageid(imageFileName);
	              
	                  
	                  // Save the product to the database using the ProductService
	                  hotelService.addHotel(h);
	                  msg="Hotel Successfully Added";
	              }
	          } else {
	              // Handle the case where no file was uploaded
	              // Provide an error message or redirect the user
	            msg="Failed to Add Hotel";
	          }
	      } catch (Exception e) {
	          // Handle exceptions appropriately, e.g., show an error message to the user
	          e.printStackTrace();
	      }
	     
	      mv.addObject("message", msg);
	      return mv;
	     
	  }
	@GetMapping("viewallhotels")
	public ModelAndView viewall()
	{
		List<Hotel>emplist=hotelService.viewallhotels();
		
		ModelAndView mv=new ModelAndView("viewallhotels");
		mv.addObject("hot", emplist);
		
		return mv;
		
	}
	
	
	@GetMapping("adminlogin")//URI & Method name can be different
	public ModelAndView adminlogin()
	{
		ModelAndView mv= new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	
	@GetMapping("emplogin")
	public ModelAndView emplogin()
	{
		ModelAndView mv=new ModelAndView();
		
		
		mv.setViewName("emplogin");
		
		return mv;
	}
	
	@PostMapping("checkemplogin")
	public ModelAndView checkemplogin(HttpServletRequest request,RedirectAttributes redirectAttributes)
	{
		
		ModelAndView mv=new ModelAndView();
		
		String email = request.getParameter("email");
	    String pwd = request.getParameter("pwd");
	     
	    Employee emp =  employeeService.checkemplogin(email, pwd);
	    
	    if(emp!=null)
	    {
	    	mv.setViewName("emphome");
	       redirectAttributes.addFlashAttribute("ack", "Login Success !");
	    	
	      //session
	      HttpSession session = request.getSession();
	      
	      session.setAttribute("eid", emp.getId()); //eid is a session variable
	      session.setAttribute("ename", emp.getName()); //ename is a session variable
	      
	      
	      mv.setViewName("emphome");
	    }
	    else
	    {
	      mv.setViewName("emplogin");
	      redirectAttributes.addFlashAttribute("ack", "Login Failed !");
	      mv.addObject("message", "Login Failed");
	    }
	    return mv;
	    
	}
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request)
	{
		
		ModelAndView mv=new ModelAndView();
		
		String username = request.getParameter("uname");
	    String pwd = request.getParameter("pwd");
	     
	    Admin adm =  adminService.checkadminlogin(username, pwd);
	    
	    if(adm!=null)
	    {
	      mv.setViewName("adminhome");
	    }
	    else
	    {
	      mv.setViewName("adminlogin");
	      mv.addObject("message", "Login Failed");
	    }
	    return mv;
	    
	}
	@GetMapping("contactus")
	public ModelAndView contactus()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("contactus");
		return mv;
	}
	
	@PostMapping("insertmess")
	public ModelAndView insert(HttpServletRequest request)
	{
		String mgs=null;
		ModelAndView mv=new ModelAndView();
		try {
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String message=request.getParameter("message");
			
			 Contact cc = new Contact();
			 cc.setName(name);
			 cc.setEmail(email);
			 cc.setMessage(message);
			 
			 mgs=contactService.addmess(cc);
			 mv.setViewName("display");
			 mv.addObject("message",mgs);
		}
		catch (Exception e) 
		{
			mgs=e.getMessage();
			mv.setViewName("displayerror");
			mv.addObject("message",mgs);
			
		}

		return mv;
	}
	
	@GetMapping("empreg")
	public ModelAndView empregistration()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("empreg");
		return mv;
	}
	
	@PostMapping("insertemp")
	public ModelAndView insertaction(HttpServletRequest request)
	{
		
		String mgs=null;
		ModelAndView mv=new ModelAndView();
		try 
		{
			String name = request.getParameter("name");
		    String gender = request.getParameter("gender");
		    String dob = request.getParameter("dob");
		    String role = request.getParameter("role");
		    String email = request.getParameter("email");
		    String pwd = request.getParameter("pwd");
		    String location = request.getParameter("location");
		    String contact = request.getParameter("contact");
		    
		    Employee emp = new Employee();
		      emp.setName(name);
		      emp.setGender(gender);
		      emp.setDateofbirth(dob);
		      emp.setRole(role);
		      emp.setEmail(email);
		      emp.setPassword(pwd);
		      emp.setLocation(location);
		      emp.setContact(contact);
		      emp.setActive(true);
		      
		    mgs=employeeService.addemployee(emp);
		  	mv.setViewName("displaymgs");
			mv.addObject("message",mgs);
			
		      
		} 
		catch (Exception e) 
		{
			mgs=e.getMessage();
			mv.setViewName("displayerror");
			mv.addObject("message",mgs);
			
		}
	
		
		return mv;
		
	}
	
	
	@GetMapping("viewallemps")
	public ModelAndView viewemps()
	{
		List<Employee>emplist=adminService.viewallemps();
		
		ModelAndView mv=new ModelAndView("viewallemps");
		mv.addObject("empdata", emplist);
		
		return mv;
		
	}
	@GetMapping("viewallmess")
	public ModelAndView viewmess()
	{
		List<Contact>clist=adminService.viewallmess();
		
		ModelAndView mv=new ModelAndView("viewallmess");
		mv.addObject("empmess", clist);
		return mv;
		
	}
	
	@GetMapping("deleteemps")
	public ModelAndView deleteemps()
	{
		List<Employee>emplist=adminService.viewallemps();
		
		ModelAndView mv=new ModelAndView("deleteemp");
		mv.addObject("empdata", emplist);
		return mv;
		
	}
	
	@GetMapping("adminhome")
	  public ModelAndView adminhome()
	  {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("adminhome");
	    return mv;
	  }
	  
	  @GetMapping("emphome")
	  public ModelAndView emphome(HttpServletRequest request)
	  {
		HttpSession session = request.getSession();
		int eid = (int)session.getAttribute("eid"); //eid is a session variable
		String ename = (String)session.getAttribute("ename"); //ename is a session variable
		
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("emphome");
	    
	    mv.addObject("eid", eid);
	    mv.addObject("ename", ename);
	    return mv;
	  }
	
	  @GetMapping("delete/{id}")
	  public ModelAndView empdelete(@PathVariable("id") int sid) {
		  String msg = adminService.deleteemp(sid);
		  ModelAndView mv = new ModelAndView();
		  mv.setViewName("adminhome");
		  return mv;
	  }
	  
	  @GetMapping("updateprofile")
	  public ModelAndView updateemp(HttpServletRequest request)
	  {
	    ModelAndView mv = new ModelAndView();
	    
	    HttpSession session = request.getSession();
	    
	    mv.setViewName("updateprofile");
	    
	    mv.addObject("eid", session.getAttribute("eid"));
	    mv.addObject("ename", session.getAttribute("ename"));
	    
	    int id = (int) session.getAttribute("eid");
	    
	    Employee emp = employeeService.viewemployeebyid(id);
	    
	    mv.addObject("emp", emp);
	    
	    return mv;
	  }
	  
	  @PostMapping("update")
	  public ModelAndView updateaction(HttpServletRequest request)
	  {
	    String msg = null;
	    
	    ModelAndView mv = new ModelAndView();
	    
	      HttpSession session = request.getSession();
	    
	    mv.addObject("eid", session.getAttribute("eid"));
	    mv.addObject("ename", session.getAttribute("ename"));
	    
	    int id = (int) session.getAttribute("eid");
	    
	   try
	   {
	     String name = request.getParameter("name");
	     String dob = request.getParameter("dob");
	     String role=request.getParameter("role");
	     String email = request.getParameter("email");
	     String pwd = request.getParameter("pwd");
	     String location = request.getParameter("location");
	     String contact = request.getParameter("contact");
	     
	     Employee emp = new Employee();
	      emp.setId(id);
	      emp.setName(name);
	      emp.setDateofbirth(dob);
	      emp.setRole(role);
	      emp.setEmail(email);
	      emp.setPassword(pwd);
	      emp.setLocation(location);
	      emp.setContact(contact);
	      
	      
	      msg = employeeService.updateemployee(emp);
	      
	      mv.setViewName("emplogin");
	      mv.addObject("message",msg);
	     
	   }
	   catch(Exception e)
	   {
	     msg = e.getMessage();
	     
	     mv.setViewName("updateerror");
	      mv.addObject("message",msg);
	   }
	    
	   
	    return mv;

	  }
	  @GetMapping("employeenavbar")
	  public ModelAndView employeeNavbar()
	  { 
		ModelAndView mv=new ModelAndView();
		mv.setViewName("employeenavbar");
		return mv;
	  }
	  
	
}
