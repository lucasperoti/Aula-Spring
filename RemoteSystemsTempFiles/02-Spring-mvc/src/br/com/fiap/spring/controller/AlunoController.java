package br.com.fiap.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fiap.spring.model.Aluno;

@Controller
@RequestMapping("aluno")
public class AlunoController {

	@GetMapping("cadastrar")
	public String form() {
		return "aluno/cadastro";
	}

	@PostMapping("cadastrar")
	public ModelAndView processarAluno(Aluno a) {
		System.out.println(a.getNome() + " " + a.getSexo() + " " + a.isAprovado() + " " + a.getUnidade());
		return new ModelAndView("aluno/cadastro")
				.addObject("a", a).addObject("msg", "Aluno Cadastrado");
				
				
//				.addObject("msg", "aluno Cadastrado!")
//				.addObject("sexo", a.getSexo())
//				.addObject("nome", a.getNome())
//				.addObject("uni", a.getUnidade())
//				.addObject("aprov", a.isAprovado());

	}
}
