package com.SpringBoot1.SpringBoot_1;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


// Backend : Sidhant-2317276

@Controller
public class ControllerLogin {
	@RequestMapping("/login")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg","");
		mv.setViewName("login");
		return mv;
	}
}
