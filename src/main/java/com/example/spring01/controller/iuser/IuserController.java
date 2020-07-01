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
		mav.addObject("", iuserService.listIuser());
		mav.setViewName("iuser/iuser_list");

		return mav;
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

	@RequestMapping("delete/{u_no}")
	public String delete(@PathVariable int u_no) {
		iuserService.deleteIuser(u_no);
		return "redirect:/iuser/list";
	}

}
