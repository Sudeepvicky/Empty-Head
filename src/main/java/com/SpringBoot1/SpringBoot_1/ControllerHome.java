package com.SpringBoot1.SpringBoot_1;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.Spring.Boot1.Model.Logins;

@Controller
public class ControllerHome {
	@RequestMapping("/home")
	public ModelAndView home(
			@RequestParam("id") String id,
			@RequestParam("name") String name,
			@RequestParam("city") String city
			) {
		ModelAndView mv = new ModelAndView();
		
		int ID = Integer.parseInt(id);
		Logins login = new Logins();
		boolean flag = login.insert(ID, name, city);
		if(flag) {
			mv.addObject("id",id);
			mv.addObject("name",name);
			mv.addObject("city",city);
			mv.setViewName("home");
		}else {
			mv.addObject("msg","User already exits!");
			mv.setViewName("login");
		}
		return mv;
	}
}
