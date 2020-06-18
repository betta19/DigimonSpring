package it.dstech.digimonspring.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import it.dstech.digimonspring.model.Digimon;
import it.dstech.digimonspring.service.DigimonService;

@Controller
public class DigimonController {

	@Autowired
	private DigimonService digimonService;
	
	@RequestMapping("/")
	public ModelAndView home() {
		List<Digimon> listaDigimon = digimonService.listAll();
		ModelAndView mav = new ModelAndView("index");
		mav.addObject("listaDigimon", listaDigimon);
		return mav;
	}
	
	@RequestMapping("/new")
	public String newDigimonForm(Map<String, Object> model) {
		Digimon digimon = new Digimon();
		model.put("digimon", digimon);
		return "new_digimon";
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveDigimon(@ModelAttribute("digimon") Digimon digimon) {
		digimonService.save(digimon);
		return "redirect:/";
	}
	
	@RequestMapping("/edit")
	public ModelAndView editDigimonForm(@RequestParam long id) {
		ModelAndView mav = new ModelAndView("edit_digimon");
		Digimon digimon = digimonService.get(id);
		mav.addObject("digimon", digimon);
		
		return mav;
	}
	
	@RequestMapping("/delete")
	public String deleteDigimonForm(@RequestParam long id) {
		digimonService.delete(id);
		return "redirect:/";		
	}
}
