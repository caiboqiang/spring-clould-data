package com.springcloulddata.dao;



import com.springcloulddata.entity.UserInfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;


@Mapper
public interface UserInfoMapper {

     List<UserInfo> getAll() ;

     //@Select("select id,user_account,user_group_id, user_password from user_info where user_phone=#{userAccount}")
     List<UserInfo> getName(@Param("userPhone") String userPhone);

}
