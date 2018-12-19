package com.springcloulddata.serviceController;


import com.springcloulddata.common.MessageBox;
import com.springcloulddata.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 测试类  被调用方
 */
@RestController
public class ServiceUserInfoController {

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
