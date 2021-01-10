package rs.ac.metropolitan.gibson.entity;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDate;

@Data
@Entity
@NoArgsConstructor
@Table(name = "prodaja")
public class Prodaja {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    @Column(name = "id_prodaje")
    private Integer id;
    @JoinColumn(name = "id_lokacije")
    @OneToOne
    private Lokacija lokacija;
    @Column(name = "datum_prodaje")
    private LocalDate datumProdaje;
    @Column(name = "cena_prodaje")
    private Double cena;

}

