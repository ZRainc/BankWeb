package com.bankweb.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.bankweb.domain.Admin;
import com.bankweb.mapper.AdminMapper;
import com.bankweb.service.AdminService;


	@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
	@Service("adminService")
	public class AdminServiceImpl implements AdminService {
		
		/*
		 * 自动注入AdminMapper
		 */
		@Autowired
		private AdminMapper adminMapper;
		
		/*
		 * AdminService接口login方法实现
		 */
		@Transactional(readOnly=true)
		@Override
		public Admin login(String loginname, String password) {
			return adminMapper.findwithLoginnameAndPassword(loginname, password);
		}
	
	

}
