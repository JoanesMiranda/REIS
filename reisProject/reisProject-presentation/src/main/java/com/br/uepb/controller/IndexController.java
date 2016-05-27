package com.br.uepb.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.br.uepb.business.GerenciarSessaoBusiness;

@Controller
public class IndexController {

	@RequestMapping(value = "/index/index.html", method = RequestMethod.GET)
	public ModelAndView indexGet(HttpServletRequest request) {

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("index/index");

		return modelAndView;
	}
	
	@RequestMapping(value = "/index/sair.html", method = RequestMethod.GET)
	public ModelAndView sairGet(HttpServletRequest request) {

		ModelAndView modelAndView = new ModelAndView();
		String login = request.getSession().getAttribute("login").toString();
		GerenciarSessaoBusiness.removeSessao(login);
		modelAndView.setViewName("redirect:/index/index.html");

		return modelAndView;
	}

}
