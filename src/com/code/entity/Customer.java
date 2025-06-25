package com.code.entity;

public class Customer {
	private String accNo;
	private String name;
	private double balance;
	public String getAccNo() {
		return accNo;
	}
	public void setAccNo(String accNo) {
		this.accNo = accNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		this.balance = balance;
	}
	public Customer(String accNo, String name, double balance) {
		super();
		this.accNo = accNo;
		this.name = name;
		this.balance = balance;
	}
	public Customer(String name, double balance) {
		super();
		this.name = name;
		this.balance = balance;
	}
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
