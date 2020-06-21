package it.dstech.digimonspring.service;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import it.dstech.digimonspring.model.Digimon;
import it.dstech.digimonspring.model.Evoluzione;
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

	public List<Digimon> ordinaPerAttacco(List<Digimon> listaDigimon) {

		Collections.sort(listaDigimon, new Comparator<Digimon>() {

			@Override
			public int compare(Digimon o1, Digimon o2) {

				if (o1.getAtk() > o2.getAtk())
					return -1;
				if (o1.getAtk() < o2.getAtk())
					return 1;
				return 0;
			}

		});
		
		return listaDigimon;

	}

	public List<Digimon> ordinaPerDifesa(List<Digimon> listaDigimon) {

		Collections.sort(listaDigimon, new Comparator<Digimon>() {

			@Override
			public int compare(Digimon o1, Digimon o2) {

				if (o1.getDef() > o2.getDef())
					return -1;
				if (o1.getDef() < o2.getDef())
					return 1;
				return 0;
			}

		});
		
		return listaDigimon;

	}

	public List<Digimon> ordinaPerResistenza(List<Digimon> listaDigimon) {

		Collections.sort(listaDigimon, new Comparator<Digimon>() {

			@Override
			public int compare(Digimon o1, Digimon o2) {

				if (o1.getRes() > o2.getRes())
					return -1;
				if (o1.getRes() < o2.getRes())
					return 1;
				return 0;
			}

		});
		
		return listaDigimon;

	}

	public List<Digimon> ordinaPerEvoluzione(List<Digimon> listaDigimon) {

		Collections.sort(listaDigimon, new Comparator<Digimon>() {

			@Override

			public int compare(Digimon o1, Digimon o2) {

				if (o1.getEvo() == Evoluzione.ULTRA_DIGIEVOLUZIONE) {

					if (o2.getEvo() == Evoluzione.BASICA

							|| o2.getEvo() == Evoluzione.MEGA_DIGIEVOLUZIONE
							|| o2.getEvo() == Evoluzione.DIGIEVOLUZIONE) {

						return -1;

					}

				}

				if (o1.getEvo() == Evoluzione.MEGA_DIGIEVOLUZIONE) {

					if (o2.getEvo() == Evoluzione.BASICA || o2.getEvo() == Evoluzione.DIGIEVOLUZIONE) {

						return -1;

					}

					if (o2.getEvo() == Evoluzione.ULTRA_DIGIEVOLUZIONE) {

						return 1;

					}

				}

				if (o1.getEvo() == Evoluzione.DIGIEVOLUZIONE) {

					if (o2.getEvo() == Evoluzione.MEGA_DIGIEVOLUZIONE
							|| o2.getEvo() == Evoluzione.ULTRA_DIGIEVOLUZIONE) {

						return 1;

					}

					if (o2.getEvo() == Evoluzione.BASICA) {
						return -1;
					}

				}

				if (o1.getEvo() == Evoluzione.BASICA) {

					if (o2.getEvo() == Evoluzione.MEGA_DIGIEVOLUZIONE || o2.getEvo() == Evoluzione.ULTRA_DIGIEVOLUZIONE
							|| o2.getEvo() == Evoluzione.DIGIEVOLUZIONE) {

						return 1;

					}

				}

				return 0;

			}

		});
		
		return listaDigimon;

	}


}
