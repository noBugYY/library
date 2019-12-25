package com.abc.handler;

import com.abc.beans.User;
import com.abc.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("user")
public class UserHandler {

    @Autowired
    private IUserService userService;
    @RequestMapping("login.do")
    public String firstDo(User user, Model model){
        User u = null;
        try{
           u = userService.userLogin(user);
        }catch (Exception e){
            model.addAttribute("message","用户名或密码错误");
            return "/login.jsp";
        }
        if(u.getFlag().equals(0)){
            return "/admin/index.jsp";
        }
        return "/reader/index.jsp";
    }
}
