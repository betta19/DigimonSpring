package it.dstech.digimonspring.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import it.dstech.digimonspring.model.Digimon;
import it.dstech.digimonspring.repository.DigimonRepository;

@Service
@Transactional
public class DigimonService {
	@Autowired
	DigimonRepository repo;

	public void save(Digimon digimon) {
		repo.save(digimon);
	}

	public List<Digimon> listAll() {
		return (List<Digimon>) repo.findAll();
	}

	public Digimon get(Long id) {
		return repo.findById(id).get();
	}

	public void delete(Long id) {
		repo.deleteById(id);
	}

	public boolean checkAssegnato() {
		List<Digimon> lista = listAll();
		for (int i = 0; i < lista.size(); i++) {
			if (!lista.get(i).isAssegnato()) {
				return true;
			}
		}
		return false;
	}


}
