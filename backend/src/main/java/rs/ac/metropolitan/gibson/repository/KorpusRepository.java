package rs.ac.metropolitan.gibson.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import rs.ac.metropolitan.gibson.entity.Korpus;

public interface KorpusRepository extends JpaRepository<Korpus, Integer> {
}
