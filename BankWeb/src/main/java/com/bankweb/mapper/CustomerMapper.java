package com.bankweb.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.bankweb.domain.Customer;

public interface CustomerMapper {
	
	
		
		@Select("select * from customer where name = #{name} and password = #{password}")
		Customer findWithLoginnameAndPassword(@Param("name")String name,
				@Param("password") String password);
		
		@Select("insert into customer(name,password,sex,age,salary,interest) values(#{name},#{password},#{sex},#{age},#{salary},#{interest})")
		Customer insertCustomer(@Param("name")String name,@Param("password")String password,@Param("sex")String sex,@Param("age")int age,@Param("salary")double salary,
								@Param("interest")String interest);
		
		
		
	


}
