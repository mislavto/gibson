package rs.ac.metropolitan.gibson.entity;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDate;

@Data
@Entity
@NoArgsConstructor
@Table(name = "mandolina")
public class Mandolina {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    @Column(name = "id_proizvoda")
    private Integer id;
    @Column(name = "tip_proizvoda")
    private String tip;
    @Column(name = "datum_proizvodnje")
    private LocalDate datumProizvodnje;
    @Column(name = "kolicina")
    private Integer kolicina;
    @Column(name = "cena_proizvoda")
    private Double cena;
}
