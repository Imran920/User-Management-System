package com.spring.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import com.spring.dao.UserDao;
import com.spring.model.User;
@Controller
public class MyController {
	
	@Autowired
	public UserDao userdao;
	
	@RequestMapping("/")
	public String home() {
		return "index";
	}
	@RequestMapping("/register")
	public String Form(Model m) {
		m.addAttribute("title","Registration page");
		return "register";
	}
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public RedirectView handleUser(@ModelAttribute User user,HttpServletRequest request) {
		System.out.println(user);
		this.userdao.saveUser(user);
		RedirectView redirecView=new RedirectView();
		redirecView.setUrl("login");
		return redirecView;
	}
	
	@RequestMapping("/login")
	public String LoginForm() {
		return "login";
	}
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public RedirectView Handlelogin(@ModelAttribute User user ,@RequestParam String email, @RequestParam String password) {
		this.userdao.verifyEmailAndPassword(email, password);
		RedirectView redirecView=new RedirectView();
		redirecView.setUrl("detail");
		return redirecView;
	}
	
	@RequestMapping("/detail")
	public String DetailUser(Model m) {
		List<User> user=userdao.getUser();
		m.addAttribute("user",user);
		return "detail";
	}
	
	//delete handler
	@RequestMapping("/delete/{userId}")
	public RedirectView deleteUser(@PathVariable("userId") int userId,HttpServletRequest request) {
		this.userdao.deleteUser(userId);
		RedirectView redirecView=new RedirectView();
		redirecView.setUrl(request.getContextPath()+"/detail");
		return redirecView;
	}
	@RequestMapping("/update/{uId}")
	public String updateForm(@PathVariable("uId") int uId, Model model) {
		User user=this.userdao.getUser(uId);
		model.addAttribute("user",user);
		return "edit";
	}
	
	@RequestMapping("/index")
	public String Logout() {
		return "index";
	}
	
}
