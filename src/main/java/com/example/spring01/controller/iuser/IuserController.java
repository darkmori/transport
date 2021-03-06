package com.example.spring01.controller.iuser;

import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.spring01.model.iuser.dto.IuserDTO;
import com.example.spring01.service.iuser.IuserService;

@Controller
@RequestMapping("iuser/*")
public class IuserController {

	@Inject
	IuserService iuserService;

	@RequestMapping("list")
	public ModelAndView list(ModelAndView mav) {

		mav.addObject("dto", iuserService.listIuser());
		mav.setViewName("iuser/iuser_list");

		return mav;
	}

	@RequestMapping("write")
	public String write() {
		return "iuser/iuser_write";
	}

	@RequestMapping("insert")
	public String insert(IuserDTO dto) {
		iuserService.insertIuser(dto);
		return "redirect:/iuser/list";
	}

	@RequestMapping("modify/{u_no}")
	public ModelAndView modify(@PathVariable int u_no, ModelAndView mav) {
		mav.setViewName("iuser/iuser_update");
		mav.addObject("dto", iuserService.modifyIuser(u_no));

		return mav;
	}

	@RequestMapping("update")
	public String update(IuserDTO dto) {
		iuserService.updateIuser(dto);
		return "redirect:/iuser/list";
	}

	@RequestMapping("delete/{u_no}")
	public String delete(@PathVariable int u_no) {
		iuserService.deleteIuser(u_no);
		return "redirect:/iuser/list";
	}

	/*
	 * // 로그인 화면
	 * 
	 * @RequestMapping("login.do") public String login() { return
	 * "iuser/iuser_login"; }
	 * 
	 * // 로그인 처리
	 * 
	 * @RequestMapping("loginCheck.do") public ModelAndView
	 * loginCheck(@ModelAttribute IuserDTO dto, HttpSession session, ModelAndView
	 * mav) { String name = iuserService.loginCheck(dto);
	 * 
	 * if (name != null) { session.setAttribute("u_mail", dto.getU_mail());
	 * session.setAttribute("u_namefirst", name);
	 * mav.setViewName("redirect:itrans/itrans_list"); mav.addObject("msg",
	 * "success"); } else { mav.setViewName("iuser/iuser_login");
	 * mav.addObject("msg", "failure"); } return mav; }
	 * 
	 * // 로그아웃 처리
	 * 
	 * @RequestMapping("logout.do") public ModelAndView logout(HttpSession session)
	 * { iuserService.logout(session); ModelAndView mav = new ModelAndView();
	 * mav.setViewName("iuser/login"); mav.addObject("msg", "logout"); return mav; }
	 */

}
