package rs.ac.metropolitan.gibson.entity;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@Entity
@NoArgsConstructor
@Table(name = "lokacija")
public class Lokacija {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    @Column(name = "id_lokacije")
    private Integer id;
    @Column(name = "drzava")
    private String drzava;
    @Column(name = "grad")
    private String grad;
    @Column(name = "adresa")
    private String adresa;
}
