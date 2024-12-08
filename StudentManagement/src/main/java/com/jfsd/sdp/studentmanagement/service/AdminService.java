package com.jfsd.sdp.studentmanagement.service;

import java.util.List;

import com.jfsd.sdp.studentmanagement.model.Admin;
import com.jfsd.sdp.studentmanagement.model.Customer;
import com.jfsd.sdp.studentmanagement.model.Employee;



public interface AdminService 
{
   public List<Employee> viewAllEmployees();
   public Admin checkadminlogin(String uname,String pwd);
   public Employee displayemployeebyID(int eid);
   public Long empcount();
   public String deleteemp(int eid);
   public String updateemployeestatus(String status,int eid); 
   
   public String addcustomer(Customer c);
   
   
   
   //created a view all customer 
   public List<Customer> viewAllCustomer();
   public Long cuscount();
   
}
