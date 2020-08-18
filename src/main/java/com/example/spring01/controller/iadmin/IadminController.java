package com.example.spring01.controller.iadmin;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("iadmin/*")
public class IadminController {
	/*
	 * @Inject IadminService iadminService;
	 * 
	 * // login map
	 * 
	 * @RequestMapping("login") public String login() { return
	 * "iadmin/iadmin_login"; }
	 * 
	 * // login check
	 * 
	 * @RequestMapping("loginCheck") public ModelAndView loginCheck(@ModelAttribute
	 * IadminDTO dto, HttpSession session, ModelAndView mav) { String name =
	 * iadminService.loginCheck(dto);
	 * 
	 * if (name != null) { session.setAttribute("a_mail", dto.getA_mail);
	 * mav.setViewName(""); mav.addObject("msg", "success"); } else {
	 * mav.setViewName(""); mav.addObject("msg", "failure"); } return mav; }
	 * 
	 * // logout mapping
	 * 
	 * @RequestMapping("logout") public String logout(HttpSession session) {
	 * session.invalidate();
	 * 
	 * return "redirect:iadmin/iadmin_login"; }
	 */
}
