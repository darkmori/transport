package com.example.spring01.controller.itrans;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.spring01.model.itrans.dto.ItransDTO;
import com.example.spring01.model.iuser.dto.IuserDTO;
import com.example.spring01.service.itrans.ItransService;

@Controller
@RequestMapping("itrans/*")
public class ItransController {

	@Inject
	ItransService itransService;

	@RequestMapping("list.do/{u_no}")
	public ModelAndView list(@PathVariable("u_no") int u_no, ModelAndView mav) {

		mav.addObject("dto", itransService.listItrans(u_no));
		mav.setViewName("itrans/itrans_list");

		return mav;
	}

	@RequestMapping("write.do/{u_no}")
	public ModelAndView write(@PathVariable("u_no") int u_no, ModelAndView mav) {

		mav.addObject("dto", itransService.writeItrans(u_no));
		mav.setViewName("itrans/itrans_write");

		return mav;
	}

	@RequestMapping("insert.do")
	public String insert(ItransDTO dto) {
		itransService.insertItrans(dto);

		int u_no = dto.getU_no();
		return "redirect:/itrans/list.do/" + u_no;
	}

	@RequestMapping("modify.do/{t_no}")
	public ModelAndView modify(@PathVariable int t_no, ModelAndView mav) {
		mav.setViewName("itrans/itrans_update");
		mav.addObject("dto", itransService.modifyItrans(t_no));

		return mav;
	}

	@RequestMapping(value = "update.do", method = RequestMethod.POST)
	public String update(ItransDTO dto) {
		itransService.updateItrans(dto);

		int u_no = dto.getU_no();
		// return "redirect:/itrans/list.do/{u_no}";
		return "redirect:/itrans/list.do/" + u_no;
	}

	@RequestMapping("delete.do/{t_no}")
	public String delete(@PathVariable int t_no) {
		itransService.deleteItrans(t_no);
		return "redirect:/itrans/list.do/";
	}
}
