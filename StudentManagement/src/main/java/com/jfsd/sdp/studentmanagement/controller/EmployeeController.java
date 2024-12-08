package com.jfsd.sdp.studentmanagement.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.jfsd.sdp.studentmanagement.model.Admin;
import com.jfsd.sdp.studentmanagement.model.Employee;
import com.jfsd.sdp.studentmanagement.service.EmployeeService;

import ch.qos.logback.core.joran.spi.HttpUtil.RequestMethod;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class EmployeeController 
{
	@Autowired
	private EmployeeService employeeService;
   @GetMapping("/")
   public ModelAndView home()
   {
	   ModelAndView mv=new ModelAndView();
	   mv.setViewName("home");
	   return mv;
   }
   
   @GetMapping("empreg")
   public ModelAndView empreg()
   {
	   ModelAndView mv=new ModelAndView();
	   mv.setViewName("empreg");
	   return mv;
   }
   
   @GetMapping("emplogin")
   public ModelAndView emplogin()
   {
	   ModelAndView mv=new ModelAndView();
	   mv.setViewName("emplogin");
	   return mv;
   }
   
   @PostMapping("insertemp")
   public ModelAndView insertemp(HttpServletRequest request, @RequestParam("eimage") MultipartFile file) throws Exception
   {
	   String msg = null;
	   ModelAndView mv = new ModelAndView();
	   try {
		   
	   
      String name = request.getParameter("ename");
    String gender = request.getParameter("egender");
    String dob = request.getParameter("edob");
    String dept = request.getParameter("edept");
    String location = request.getParameter("elocation");
    String email = request.getParameter("eemail");
    String password = request.getParameter("epwd");
    String contact = request.getParameter("econtact");
   
	
	String status = "Registered";
	
      Employee emp = new Employee();
      emp.setName(name);
      emp.setGender(gender);
      emp.setDepartment(dept);
      emp.setDateofbirth(dob);
      emp.setLocation(location);
      emp.setEmail(email);
      emp.setPassword(password);
      emp.setContact(contact);
     
      emp.setStatus(status);
      
//    String msg = employeeService.employeeRegistration(emp);
//    
//    ModelAndView mv = new ModelAndView("regsuccess");
//    mv.addObject("message", msg);
      msg=employeeService.employeeRegistration(emp);
      System.out.println(msg);
      mv.setViewName("regsuccess");
      mv.addObject("message",msg);
	 }
	   catch(Exception e)
	   {
		   msg = e.getMessage();
		   System.out.println(msg.toString());
		   mv.setViewName("employeeerror");
		   mv.addObject("message",msg); 
	   }
	   return mv;
   }
   
//   @PostMapping("checkemplogin")
//	public ModelAndView checkemplogin(HttpServletRequest request)
//	{
//		
//		ModelAndView mv = new ModelAndView();
//		
//		String eemail = request.getParameter("eemail");
//		String epwd = request.getParameter("epwd");
//		
////        Employee emp=employeeService.checkemplogin(eemail, epwd);		
////		if (emp!=null)
////		{
////			// session 
////			HttpSession session= request.getSession(false);
////			session.setAttribute("employee", emp); // employee is session variable
////			
////			// session.setMaxInactiveInterval(5); //or add in applications.property file
////			
////			//return "Emp login Success";
////			mv.setViewName("emphome");
////			
////		}
////		else
////		{
////			//return "Emp login Failed";
////			mv.setViewName("emplogin");
////			mv.addObject("message", "Login Failed");
////		}
//		return mv;
//		
//	}
   
//   @PostMapping("checkemplogin")
//	public ModelAndView checkadminlogin(HttpServletRequest request) {
//	    ModelAndView mv = new ModelAndView();
//	    
//	    String auname = request.getParameter("auname");
//	    String apwd = request.getParameter("apwd");
//
//	    Employee employee = employeeService.checkemplogin(auname, apwd);
//
//	    if (employee != null) {
//	        mv.setViewName("emphome");
//	        
//	        // Debugging
//	        System.out.println("Login Success: Admin home loaded");
//	    } else 
//	    {
//	    	mv.setViewName("emplogin");
//    		mv.addObject("message", "Login Failed");
//	        
//	        // Debugging
//	        System.out.println("Login Failed: Credentials are wrong");
//	    }
//	    return mv;
//	}
   
   @GetMapping("emphome")
   public ModelAndView emphome()
   {
	   ModelAndView mv=new ModelAndView();
	   mv.setViewName("emphome");
	   return mv;
   }
   
   @GetMapping("empprofile")
   public ModelAndView empprofile()
   {
	   ModelAndView mv=new ModelAndView();
	   mv.setViewName("empprofile");
	   return mv;
   }
   
   @GetMapping("updateemp")
   public ModelAndView updateemp()
   {
	   ModelAndView mv=new ModelAndView();
	   mv.setViewName("updateemp");
	   return mv;
   }
   
   @GetMapping("empcontactus")
   public ModelAndView empcontactus()
   {
	   ModelAndView mv=new ModelAndView();
	   mv.setViewName("empcontactus");
	   return mv;
   }
   
   @PostMapping("checkemplogin")
   //@ResponseBody
   @RequestMapping(value = "checkemplogin")
   public ModelAndView checkemplogin(HttpServletRequest request)
   {
     ModelAndView mv =  new ModelAndView();
     
     
     String eemail = request.getParameter("eemail");
     String epwd = request.getParameter("epwd");
     
     Employee emp = employeeService.checkemplogin(eemail, epwd);
     if(emp!=null)
     {
       // session management//
        HttpSession session  = request.getSession();
        session.setAttribute("employee", emp); // employee is a session variable // 
        
       //  session.setMaxInactiveInterval(5);
        
       // return "Employee Login Successful";
       mv.setViewName("emphome");
       
     }
     else
     {
       // return "Employee Login Unsuccessful";
       mv.setViewName("emplogin");
       mv.addObject("message", "Login Failed");
     }
     
     return mv;
   }
  
   @GetMapping("emplogout")
   public ModelAndView emplogout(HttpServletRequest request)
   {
	   
	   HttpSession session = request.getSession();
	   
	   session.removeAttribute("employee"); //remove one attribute
	  // session.invalidate(); // -> to remove all session attributes
	  // session.getId();
	   
	   ModelAndView mv=new ModelAndView();
	   mv.setViewName("emplogin");
	   return mv;
   }
   
   @GetMapping("empsessionexpiry")
   public ModelAndView empsessionexpiry()
   {
	   ModelAndView mv=new ModelAndView();
	   mv.setViewName("empsessionexpiry");
	   return mv;
   }
  
   @GetMapping("viewempsbydept")
   public ModelAndView viewempsbydept(HttpServletRequest request)
   {
	   ModelAndView mv=new ModelAndView();
	   HttpSession session=request.getSession();
	   Employee emp=(Employee) session.getAttribute("employee");//employee is session object
	   
	   List<Employee> emplist=employeeService.displayEmployeesByDept(emp.getDepartment());
	   
	   mv.addObject("emplist", emplist);
	   return mv;
   } 
}
