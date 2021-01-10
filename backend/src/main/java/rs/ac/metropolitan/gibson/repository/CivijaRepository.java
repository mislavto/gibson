package rs.ac.metropolitan.gibson.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import rs.ac.metropolitan.gibson.entity.Civija;

@Repository
public interface CivijaRepository extends JpaRepository<Civija, Integer> {
}
