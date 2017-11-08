package com.bankweb.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.bankweb.domain.Admin;

/**
 * @author zyc
 * AdminMapper接口
 */
public interface AdminMapper {
	
	/**
	 * 根据登录名和密码查询用户
	 * @param String loginname
	 * @Param String password
	 * @return 找到返回User对象，没有找到返回null
	 */
	@Select("select * from admin where loginname = #{loginname} and password = #{password}")
	Admin findwithLoginnameAndPassword(@Param("loginname")String loginname,
			@Param("password") String password);
	
	
}
