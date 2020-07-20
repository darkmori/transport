package com.example.spring01.controller.itrans;

import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.spring01.model.itrans.dto.ItransDTO;
import com.example.spring01.service.itrans.ItransService;

@Controller
@RequestMapping("itrans/*")
public class ItransController {

	@Inject
	ItransService itransService;

	@RequestMapping("list.do")
	public ModelAndView list(ModelAndView mav) {

		mav.addObject("dto", itransService.listItrans());
		mav.setViewName("itrans/itrans_list");

		return mav;
	}

	@RequestMapping("write.do")
	public String write() {
		return "itrans/itrans_write";
	}

	@RequestMapping("insert.do")
	public String insert(ItransDTO dto) {
		itransService.insertItrans(dto);
		return "redirect:/itrans/list.do";
	}

	@RequestMapping("modify.do/{t_no}")
	public ModelAndView modify(@PathVariable int t_no, ModelAndView mav) {
		mav.setViewName("itrans/itrans_update");
		mav.addObject("dto", itransService.modifyItrans(t_no));

		return mav;
	}

	@RequestMapping("update.do")
	public String update(ItransDTO dto) {
		itransService.updateItrans(dto);
		return "redirect:/itrans/list.do";
	}

	@RequestMapping("delete.do/{t_no}")
	public String delete(@PathVariable int t_no) {
		itransService.deleteItrans(t_no);
		return "redirect:/itrans/list.do";
	}
}
