package com.bankweb.service;

import com.bankweb.domain.Customer;

/**
 * 
 * @author zyc
 *Customer服务层接口
 */
public interface CustomerService {

	Customer login(String name, String password);
	Customer register(String name, String passwrd, String sex, int age, double salary, String interest);
}
