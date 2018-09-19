package br.com.fiap.jpa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.fiap.jpa.dao.JogadorDAO;
import br.com.fiap.jpa.model.Jogador;

@Controller
@RequestMapping("jogador")
public class JogadorController {
	
	@Autowired
	private JogadorDAO dao;
	
	
	@Transactional
	@PostMapping("excluir")
	public String processarExcluir(int codigo, RedirectAttributes r) {
		try {
			dao.remover(codigo);	
			
		} catch (Exception e) {
			e.printStackTrace();
			r.addFlashAttribute("msg", "Jogador removido!");
		}
		return "redirect:/jogador/listar";
	}
	
	@Transactional
	@PostMapping("editar")
	public String processarEdicao(Jogador jogador, RedirectAttributes r) {
		dao.atualizar(jogador);
		r.addFlashAttribute("msg","Jogador atualizado");
		return "redirect:/jogador/listar";
	}
	
	@GetMapping("editar/{id}")
	public ModelAndView atualizar(@PathVariable("id") int codigo) {
		return new ModelAndView("jogador/edicao")
				.addObject("jogador", dao.buscar(codigo));
	}
	
	
	@GetMapping("listar")
	public ModelAndView abreLista() {
		return new ModelAndView("jogador/lista")
				.addObject("jogadores", dao.listar());
	}
	
	@GetMapping("cadastrar")
	public String form() {
		return "jogador/form";
	}
	
	@Transactional
	@PostMapping("cadastrar")
	public ModelAndView processarForm(Jogador jogador,RedirectAttributes r) {
		dao.cadastrar(jogador);
		r.addFlashAttribute("msg", "Jogador cadastrado");
		return new ModelAndView("redirect:/jogador/cadastrar");
				
	}
}
