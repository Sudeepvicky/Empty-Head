package com.SpringBoot1.SpringBoot_1;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.Spring.Boot1.Model.Logins;


// Backend : Sidhant-2317276

@Controller
public class ControllerLogin {
	@RequestMapping("/login")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		List<String> usernames = new ArrayList<String>();
		usernames.add("Sudeep_v1");
		usernames.add("Sudeep_v2");
		usernames.add("Sudeep_v2");
		usernames.add("Sudeep_v4");
		usernames.add("Sudeep_v5");
		String res = "";
		for(String s: usernames) {
			res += s + ",";
		}
		mv.addObject("trainee_usernames",res);
		mv.addObject("trainer_usernames",res);
		mv.setViewName("login");
		return mv;
	}
	
	
	@RequestMapping("/Trainee_login")
	public ModelAndView Trainee_login(
			@RequestParam("email") String email,
			@RequestParam("password") String password
			) {
		
		ModelAndView mv = new ModelAndView();
		Logins login = new Logins();
		boolean check = true;
//		check = login.trainee_login(email,password);
		if(check) {
			mv.addObject("msg","trainee");
			mv.addObject("email",email);
			mv.addObject("password",password);
			mv.setViewName("trainee");
		}else {
			mv.setViewName("login");
		}
		return mv;
	}
	
	@RequestMapping("/Trainer_login")
	public ModelAndView Trainer_login(
			@RequestParam("email") String email,
			@RequestParam("password") String password
			) {
		
		ModelAndView mv = new ModelAndView();
		Logins login = new Logins();
		boolean check = true;
//		check = login.trainer_login(email,password);
		if(check) {
			mv.addObject("email",email);
			mv.addObject("password",password);
			mv.setViewName("trainer");
		}else {
			mv.setViewName("login");
		}
		return mv;
	}
	
	@RequestMapping("/Admin_login")
	public ModelAndView Admin_login(
			@RequestParam("username") String username,
			@RequestParam("password") String password
			) {
		
		ModelAndView mv = new ModelAndView();
		Logins login = new Logins();
		boolean check = true;
//		check = login.admin_login(username,password);
		if(check) {
			mv.addObject("username",username);
			mv.addObject("password",password);
			mv.setViewName("admin");
		}else {
			mv.setViewName("login");
		}
		return mv;
	}
	
	
}
