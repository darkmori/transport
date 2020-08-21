package com.example.spring01.controller.iadmin;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.spring01.model.iadmin.dto.IadminDTO;
import com.example.spring01.service.iadmin.IadminService;

@Controller
@RequestMapping("iadmin/*")
public class IadminController {

	@Inject
	IadminService iadminService;

	// login map

	@RequestMapping("login")
	public String login() {
		return "iadmin/iadmin_login";
	}

	// login check
	@RequestMapping("loginCheck")
	public ModelAndView loginCheck(@ModelAttribute IadminDTO dto, HttpSession session, ModelAndView mav) {
		String name = iadminService.loginCheck(dto);

		if (name != null) {
			session.setAttribute("a_mail", dto.getA_mail());
			session.setAttribute("a_name", name);
			mav.setViewName("redirect:/iuser/list");
//			mav.addObject("msg", "success");
		} else {
			mav.setViewName("redirect:/iadmin/login");
			mav.addObject("msg", "failure");
		}
		return mav;
	}

	// logout mapping

	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();

		return "redirect:/iadmin/login";
	}

}
