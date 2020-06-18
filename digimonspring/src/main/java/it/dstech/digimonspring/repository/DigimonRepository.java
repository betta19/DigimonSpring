package it.dstech.digimonspring.repository;

import org.springframework.data.repository.CrudRepository;
import it.dstech.digimonspring.model.Digimon;


public interface DigimonRepository extends CrudRepository<Digimon, Long> {
	
}
