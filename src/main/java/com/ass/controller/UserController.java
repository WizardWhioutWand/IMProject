package com.ass.controller;

import com.ass.bean.Manager;
import com.ass.bean.User;
import com.ass.service.UserService;
import com.ass.service.UserServiceImp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {


    @Autowired
    private UserService userService;


    @RequestMapping("/findAll")
    public String findAll(Model model){
    System.out.println("表现层查询所有用户");
    List<User> users=userService.findAll();
        System.out.println(users.get(0));
    model.addAttribute("list",users);
    return "list";
}
      @RequestMapping(value = "/userLogin",method = RequestMethod.POST)
 public  void userLogin (@RequestParam("userName") String userName, @RequestParam("passWord")String passWord,
                        HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        User re = userService.findUser(userName);
        if (re!=null){
            if(passWord.equals(re.getUserPW())){
                request.getSession().setAttribute("user",re);
              request.getRequestDispatcher("/index.jsp").forward(request,response);
            }
        }
         else {
            request.getSession().setAttribute("error","用户名或密码错误，请重新输入");
            request.getRequestDispatcher("/login.jsp").forward(request,response);
        }
 }
    @RequestMapping(value = "/managerLogin",method = RequestMethod.POST)
    public  void managerLogin (@RequestParam("userName") String userName, @RequestParam("passWord")String passWord,
                            HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
       Manager re = userService.findManager(userName);
        if (re!=null){
            if(passWord.equals(re.getPassword())){
                request.getSession().setAttribute("manager",re);
                request.getRequestDispatcher("/admin/index.jsp").forward(request,response);
            }
        }else {
            request.getSession().setAttribute("error","用户名或密码错误，请重新输入");
            request.getRequestDispatcher("/admin/login.jsp").forward(request,response);
        }

    }
}
