package rs.ac.metropolitan.gibson.entity;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDate;

@Data
@Entity
@NoArgsConstructor
@Table(name = "civija")
@EqualsAndHashCode(callSuper = false, onlyExplicitlyIncluded = true)
public class Civija {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    @Column(name = "id_dela")
    private Integer id;
    @Column(name = "id_proizvoda")
    private Integer proizvodId;
    @Column(name = "cena_dela")
    private Double cena;
    @Column(name = "datum_proizvodnje")
    private LocalDate datumProizvodnje;
    @Column(name = "kolicina")
    private Integer kolicina;
    @Column(name = "velicina_civije")
    private Double velicina;
    @Column(name = "marka_civije")
    private String marka;
}
