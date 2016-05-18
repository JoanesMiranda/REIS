package com.br.uepb.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.br.uepb.business.LoginBusiness;
import com.br.uepb.model.LoginDomain;

@Controller
public class LoginController {

	@RequestMapping(value = "/index/login.html", method = RequestMethod.GET)
	public ModelAndView cadastrarGet(HttpServletRequest request) {

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("index/login");
		modelAndView.addObject("loginDomain",
				new LoginDomain());
		return modelAndView;
	}

	@RequestMapping(value = "/index/login.html", method = RequestMethod.POST)
	public ModelAndView loginPost(@ModelAttribute("loginDomain") LoginDomain login, Model model) {
		LoginBusiness loginBusiness = new LoginBusiness();
		ModelAndView modelAndView = new ModelAndView();
		if(login!=null ){
			if(loginBusiness.loginValido(login.getLogin(), login.getSenha())){

				modelAndView.setViewName("redirect:/home/home.html");
			}else{
				modelAndView.setViewName("index/login");
				String mensagem = "Login ou senha está incorreto";
				modelAndView.addObject("mensagem", mensagem);
				modelAndView.addObject("status",
						"1");
			}
		}
		return modelAndView;
	}

}
