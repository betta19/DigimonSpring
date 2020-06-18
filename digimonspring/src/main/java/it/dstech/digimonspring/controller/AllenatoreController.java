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

import it.dstech.digimonspring.model.Allenatore;
import it.dstech.digimonspring.model.Digimon;
import it.dstech.digimonspring.service.AllenatoreService;
import it.dstech.digimonspring.service.DigimonService;

@Controller
public class AllenatoreController {
	
	@Autowired
	private AllenatoreService allenatoreService;
	
	@Autowired
	private DigimonService digimonService;
	
	@RequestMapping(value= {"/", "/homeAllenatore"})
	public ModelAndView home() {
		List<Allenatore> listaAllenatore = allenatoreService.listAll();
		List<Digimon> listaDigimon = digimonService.listAll();
		ModelAndView mav = new ModelAndView("index");
		mav.addObject("listaAllenatore", listaAllenatore);
		mav.addObject("listaDigimon", listaDigimon);
		return mav;
	}
	
	@RequestMapping("/newAllenatore")
	public String newAllenatoreForm(Map<String, Object> model) {
		Allenatore allenatore = new Allenatore();
		model.put("allenatore", allenatore);
		return "new_allenatore";
	}
	
	@RequestMapping("/addDigimon")
	public String addDigimonForm(Map<String, Object> model) {
		Allenatore allenatore = new Allenatore();
		List<Digimon> listaDigimon = digimonService.listAll();
		model.put("allenatore", allenatore);
		model.put("digimon", listaDigimon);
		return "scegli_digimon";
	}
	
	@RequestMapping("/addToAllenatore")
	public String addToAllenatoreForm(Map<String, Object> model) {
		Allenatore allenatore = new Allenatore();
		Digimon digimon = new Digimon();
		allenatore.getListaDigimon().add(digimon);
		List<Digimon> listaDigimon = allenatore.getListaDigimon();
		model.put("allenatore", allenatore);
		model.put("digimonAllenatore", listaDigimon);
		return "scegli_digimon";
	}
	
	
	@RequestMapping(value = "/saveAllenatore", method = RequestMethod.POST)
	public String saveAllenatore(@ModelAttribute("digimon") Allenatore allenatore) {
		allenatoreService.save(allenatore);
		return "redirect:/";
	}
	
	@RequestMapping("/editAllenatore")
	public ModelAndView editAllenatoreForm(@RequestParam long id) {
		ModelAndView mav = new ModelAndView("edit_allenatore");
		Allenatore allenatore = allenatoreService.get(id);
		mav.addObject("allenatore", allenatore);
		
		return mav;
	}
	
	@RequestMapping("/deleteAllenatore")
	public String deleteAllenatoreForm(@RequestParam long id) {
		allenatoreService.delete(id);
		return "redirect:/homeAllenatore";		
	}

}