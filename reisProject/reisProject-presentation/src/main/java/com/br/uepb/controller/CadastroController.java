package com.br.uepb.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.br.uepb.business.LoginBusiness;
import com.br.uepb.business.SessaoBusiness;
import com.br.uepb.model.LoginDomain;

@Controller
public class CadastroController {

	@RequestMapping(value = "/index/cadastrar.html", method = RequestMethod.GET)
	public ModelAndView cadastrarGet(HttpServletRequest request) {

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("index/cadastrar");
		modelAndView.addObject("loginDomain",
				new LoginDomain());
		return modelAndView;
	}

	@RequestMapping(value = "/index/cadastrar.html", method = RequestMethod.POST)
	public ModelAndView cadastrarPost(@ModelAttribute("loginDomain") LoginDomain login, Model model) {
		LoginBusiness loginBusiness = new LoginBusiness();
		ModelAndView modelAndView = new ModelAndView();
		if(login!=null){
			
			if(loginBusiness.salvar(login)){

				modelAndView.setViewName("home/home");
				SessaoBusiness.setLoginDomain(login);
				String mensagem = "Cadastro realizado com sucesso";
				modelAndView.addObject("mensagem", mensagem);
				modelAndView.addObject("status",
						"0");
			}else{
				modelAndView.setViewName("index/cadastrar");
				String mensagem = "Login já está sendo usado";
				modelAndView.addObject("mensagem", mensagem);
				modelAndView.addObject("status",
						"1");
			}
		}
		return modelAndView;
	}

}
