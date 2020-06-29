package com.example.spring01.controller.iuser;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.spring01.service.iuser.IuserService;

@Controller
@RequestMapping("iuser/*")
public interface IuserController {
	
	/*
	 * @Inject IuserService iuserService;
	 * 
	 * @RequestMapping("list.do") public ModelAndView list(ModelAndView mav) {
	 * mav.addObject("dto",iuserService.listIuser());
	 * mav.setViewName("iuser/iuser_list");
	 * 
	 * return mav; }
	 */

}
