package com.springcloulddata.controller;


import com.springcloulddata.common.MessageBox;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.springcloulddata.service.UserInfoService;

/**
 * 测试类
 */
@RestController
@RequestMapping("/A")
public class UserInfoController {

    @Autowired
    private UserInfoService userService;
    @GetMapping("userHello")
    public MessageBox userInfoControllerHello(){
        return MessageBox.build("100","0.0.1 OK");
    }

    @GetMapping("getAll")
    public MessageBox getAll(){
        return MessageBox.build("100","ok",userService.get());
    }

    @GetMapping("getPhone")
    public MessageBox getName(String userPhone){
        return MessageBox.build("100","ok",userService.getName(userPhone));
    }
}
