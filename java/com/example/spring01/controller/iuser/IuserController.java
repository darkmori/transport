package com.example.spring01.controller.iuser;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.spring01.model.iuser.dto.IuserDTO;
import com.example.spring01.service.iuser.IuserService;

@Controller
@RequestMapping("iuser/*")
public class IuserController {

	private static final Logger logger = LoggerFactory.getLogger(IuserController.class);

	@Inject
	IuserService iuserService;

	@RequestMapping("list")
	public ModelAndView list(ModelAndView mav) {
		mav.addObject("", iuserService.listIuser());
		mav.setViewName("iuser/iuser_list");

		return mav;
	}

	@RequestMapping("insert")
	public String insert(IuserDTO dto) {
		iuserService.insertIuser(dto);
		return "redirect:/iuser/iuser_list";
	}

	@RequestMapping("modify/{u_no}")
	public ModelAndView modify(@PathVariable int u_no, ModelAndView mav) {
		mav.setViewName("iuser/iuser_update");
		mav.addObject("dto", iuserService.modifyIuser(u_no));

		return mav;
	}

	@RequestMapping("delete/{u_no}")
	public String delete(@PathVariable int u_no) {
		iuserService.deleteIuser(u_no);
		return "redirect:/iuser/iuser_list";
	}

	// Login
	/*
	 * @RequestMapping("login") public String login() { return "iuser/iuser_login";
	 * }
	 * 
	 * @RequestMapping("login_check") public ModelAndView login_check(IuserDTO dto,
	 * HttpSession session, ModelAndView mav) { boolean result =
	 * iuserService.loginCheck(dto,session); if (result == true) {
	 * session.setAttribute("u_mail", dto.getU_mail());
	 * session.setAttribute("u_namefirst", result);
	 * mav.setViewName("redirect:/itrans/list"); mav.addObject("message",
	 * "success"); } else { mav.setViewName("iuser/iuser_login");
	 * mav.addObject("message", "error"); }
	 * 
	 * return mav; }
	 * 
	 * @RequestMapping("logout") public String logout(HttpSession session) {
	 * session.invalidate();
	 * 
	 * return "redirect:/iuser/iuser_login"; }
	 */
}
