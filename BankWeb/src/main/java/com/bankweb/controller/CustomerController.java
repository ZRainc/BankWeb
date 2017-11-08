package com.bankweb.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.bankweb.domain.Customer;
import com.bankweb.service.CustomerService;

@Controller
public class CustomerController {

	/**
	 * 自动注入CustomerService
	 **/
	@Autowired
	@Qualifier("customerService")
	private CustomerService customerService;
	
	/**
	 * 处理login请求
	 */
	
	@RequestMapping(value="/register", method = RequestMethod.POST)
	public ModelAndView reigster(
			String name,
			String password,
			String sex,
			int age,
			double salary,
			String interest,
			ModelAndView mv){
	Customer register = customerService.register(name, password, sex, age, salary, interest);
		if(register != null){
			// 注册成功，将user对象设置到HttpSession作用范围域
		   	//session.setAttribute("register", register);
			// 转发到loginForm请求
			mv.setViewName("loginForm");
		}
		else{
			// 注册失败，设置失败提示信息，并跳转到注册页面
			mv.addObject("message", "注册成功，请登录!");
			mv.setViewName("register");
		}
		return mv;
	}
	
	@RequestMapping(value="/login")
	public ModelAndView login(
			String name,
			String password,
			ModelAndView mv,
			HttpSession session){
		// 根据登录名和密码查找用户，判断用户登录
		Customer customer = customerService.login(name, password);
		if(customer != null){
			//登录成功，将customer对象设置到HttpSession作用范围域
			session.setAttribute("customer", customer);
			//转发到index请求
			mv.setView(new RedirectView("main"));
		}else{
			//登录失败，设置登录失败提示信息，并跳转到登录页面
			mv.addObject("message", "登录名或密码错误，请重新登录");
			mv.setViewName("main");
		}
		return mv;	
	}
	
	
	
}
