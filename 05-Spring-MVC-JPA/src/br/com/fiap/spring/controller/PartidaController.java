package br.com.fiap.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.fiap.spring.dao.PartidaDAO;
import br.com.fiap.spring.model.Partida;

@Controller
@RequestMapping("partida")
public class PartidaController {
	
	@Autowired
	private PartidaDAO dao;
	
	@GetMapping("listar")
	public ModelAndView abrirLista() {
		return new ModelAndView("partida/lista").addObject("partidas", dao.listar());
	}
	
	
	@GetMapping("cadastrar")
	public String abrirForm(Partida partida) {
		return "partida/cadastro";
	}

	
	@Transactional
	@PostMapping("cadastrar")
	public String ProcessarForm(Partida partida, RedirectAttributes r) {
		dao.cadastrar(partida);
		r.addFlashAttribute("msg","Partida cadastrada");
		return "redirect:/partida/cadastrar"; //URL
	}
}
