package com.bankweb.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.bankweb.domain.Customer;
import com.bankweb.mapper.CustomerMapper;
import com.bankweb.service.CustomerService;

/**
 * Customer服务层接口实现类
 * @author zyc
 * @Service("customerService")用于当前类注释一个Spring的bean，名为customerService
 *
 */
@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("customerService")
public class CustomerServiceImpl implements CustomerService{
	
	/**
	 * 自动注入CustomerMapper
	 */
	@Autowired
	private CustomerMapper customerMapper;
	
	/**
	 * CustomerService接口login方法实现
	 */
	@Transactional(readOnly=true)
	@Override
	public Customer login(String name, String password) {
		return customerMapper.findWithLoginnameAndPassword(name, password);
	}

	@Override
	public Customer register(String name, String password, String sex, int age, double salary, String interest) {
		return customerMapper.insertCustomer(name, password, sex, age, salary, interest);
	}

}
