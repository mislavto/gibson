package rs.ac.metropolitan.gibson.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import rs.ac.metropolitan.gibson.entity.Lokacija;

public interface LokacijaRepository extends JpaRepository<Lokacija, Integer> {
}
