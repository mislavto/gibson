package rs.ac.metropolitan.gibson.entity;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDate;

@Data
@Entity
@NoArgsConstructor
@Table(name = "zica")
public class Zica {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    @Column(name = "id_dela")
    private Integer id;
    @JoinColumn(name = "id_proizvoda", referencedColumnName = "id_proizvoda", insertable = false, updatable = false)
    @ManyToOne
    private Gitara gitara;
    @JoinColumn(name = "id_proizvoda", referencedColumnName = "id_proizvoda", insertable = false, updatable = false)
    @ManyToOne
    private Mandolina mandolina;
    @Column(name = "kolicina")
    private Integer kolicina;
    @Column(name = "cena_dela")
    private Double cena;
    @Column(name = "datum_proizvodnje")
    private LocalDate datumProizvodnje;
    @Column(name = "tip_zice")
    private String tip;
}
