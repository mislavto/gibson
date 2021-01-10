package rs.ac.metropolitan.gibson.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import rs.ac.metropolitan.gibson.entity.Prodaja;

public interface ProdajaRepository extends JpaRepository<Prodaja, Integer> {
}
