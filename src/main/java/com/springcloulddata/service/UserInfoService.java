package com.springcloulddata.service;


import com.springcloulddata.dao.UserInfoMapper;
import com.springcloulddata.entity.UserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class UserInfoService {
    @Autowired
    private UserInfoMapper user;
    public List<UserInfo> get(){
        return user.getAll();
    }

    public  List<UserInfo> getName(String userPhone){
        return user.getName(userPhone);
    }
}
