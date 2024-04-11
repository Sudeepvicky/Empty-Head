package com.SpringBoot1.SpringBoot_1;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.Spring.Boot1.Model.Logins;

@Controller
public class ControllerSignUp {
	
	@RequestMapping("/Trainee-signup")
	public ModelAndView Trainee_signup(
			@RequestParam("first_name") String first_name,
			@RequestParam("last_name") String last_name,
			@RequestParam("dob") String dob,
			@RequestParam("feild_of_study") String feild_of_study,
			@RequestParam("email") String email,
			@RequestParam("password") String password
			){
		ModelAndView mv = new ModelAndView();
		
		boolean check = true;
//		SignUp sign_up = new SignUp();
//		check = sign_up.trainee_signup(first_name,last_name,dob,feild_of_study,email,password)
		if(check) {
			mv.addObject("first_name",first_name);
			mv.addObject("last_name",last_name);
			mv.addObject("dob",dob);
			mv.addObject("feild_of_study",feild_of_study);
			mv.addObject("email",email);
			mv.addObject("password",password);
			mv.setViewName("trainee");
		}else {
			mv.setViewName("login");
		}
		return mv;
	}
	
	@RequestMapping("/Trainer-signup")
	public ModelAndView Trainer_signup(
			@RequestParam("first_name") String first_name,
			@RequestParam("last_name") String last_name,
			@RequestParam("DOB") String DOB,
			@RequestParam("expertise") String expertise,
			@RequestParam("email") String email,
			@RequestParam("password") String password
			){
		ModelAndView mv = new ModelAndView();
		
		boolean check = true;
//		SignUp sign_up = new SignUp();
//		check = sign_up.trainer_signup(first_name,last_name,DOB,expertise,email,password)
		if(check) {
//			below 6 lines are added by siddhant nigade on 11/4/2024
			mv.addObject("first_name",first_name);
			mv.addObject("last_name",last_name);
			mv.addObject("DOB",DOB);
			mv.addObject("expertise",expertise);
			mv.addObject("email",email);
			mv.addObject("password",password);
			mv.setViewName("trainer");
			
		}else {
			mv.setViewName("login");
		}
		return mv;
	}

	

}
