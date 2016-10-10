package com.yihe.vdc.testcloud.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/vdc")
public class IndexController {

	/**
	 * 首页
	 * 
	 * @param request
	 * @return
	 */
	@RequestMapping("/index")
	public String index(HttpServletRequest request, Model model) {
		model.addAttribute("message", "hello 第一个vdcdemo!");
		model.addAttribute("newmessage", "我是新增的message！");
		return "/vdc/index";
	}
}
