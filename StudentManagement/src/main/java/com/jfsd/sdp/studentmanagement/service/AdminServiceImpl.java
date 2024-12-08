package com.jfsd.sdp.studentmanagement.service; 
 
import java.util.List; 
 
import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service;

import com.jfsd.sdp.studentmanagement.model.Admin;
import com.jfsd.sdp.studentmanagement.model.Customer;
import com.jfsd.sdp.studentmanagement.model.Employee;
import com.jfsd.sdp.studentmanagement.repository.AdminRepository;
import com.jfsd.sdp.studentmanagement.repository.CustomerRepository;
import com.jfsd.sdp.studentmanagement.repository.EmployeeRepository; 
 

 
@Service 
public class AdminServiceImpl implements AdminService 
{ 
 @Autowired 
 private EmployeeRepository employeeRepository; 
  
 @Autowired 
 private AdminRepository adminRepository; 
 
 @Autowired
 private CustomerRepository customerRepository;
 
 @Override 
 public List<Employee> viewAllEmployees()  
 { 
  return employeeRepository.findAll(); 
 } 
 
 @Override 
 public Admin checkadminlogin(String uname, String pwd) { 
   
  return adminRepository.checkadminlogin(uname, pwd); 
 }

@Override
public Employee displayemployeebyID(int eid)
{
	return employeeRepository.findById(eid).get();
}

@Override
public Long empcount()
{
	return employeeRepository.count();
	
}

@Override
public String deleteemp(int eid)
{
			employeeRepository.deleteById(eid);
			return "Employee Deleted Successfully";	
}

@Override
public String updateemployeestatus(String status, int eid)
{
	
	 employeeRepository.updateEmployeeStatus(status, eid);
	 return "Employee Status Updated Successfully";
}

@Override
public String addcustomer(Customer c) 
{
	customerRepository.save(c);
	return "Customer Added Successfully";
}


//customer 
@Override
public List<Customer> viewAllCustomer() {
	
	return customerRepository.findAll();
}

@Override
public Long cuscount() {
	
	return customerRepository.count();
} 
  
}