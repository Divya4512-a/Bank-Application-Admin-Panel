package com.code.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.code.entity.Customer;

public class CustomerDao {
	private Connection con;

	public CustomerDao(Connection con) {
		super();
		this.con = con;
	}
	
	public boolean addCustomer(Customer cust) {
		boolean f = false;
		try {
			String sql = "insert into customer values(?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, cust.getAccNo());
			ps.setString(2, cust.getName());
			ps.setDouble(3, cust.getBalance());
			int i = ps.executeUpdate();
			if(i>0) {
				f=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	public List<Customer> viewAllCustomer() {
		List<Customer> list = new ArrayList<Customer>();
		Customer cust = null;
		try {
			String sql = "select * from customer";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				cust = new Customer();
				cust.setAccNo(rs.getString(1));
				cust.setName(rs.getString(2));
				cust.setBalance(rs.getDouble(3));
				list.add(cust);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public Customer viewCustomerByAcc(String acc) {
	
		Customer cust = null;
		try {
			String sql = "select * from customer where accNo=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, acc);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				cust = new Customer();
				cust.setAccNo(rs.getString(1));
				cust.setName(rs.getString(2));
				cust.setBalance(rs.getDouble(3));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cust;
	}
	public boolean deposit(Customer cust) {
		boolean f = false;
		try {
			String sql = "update customer set name=?, balance=balance+? where accNo=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, cust.getName());
			ps.setDouble(2,cust.getBalance() );
			ps.setString(3, cust.getAccNo());
			int i = ps.executeUpdate();		
			if(i>0) {
				f = true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
}
