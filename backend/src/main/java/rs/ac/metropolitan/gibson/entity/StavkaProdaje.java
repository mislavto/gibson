package rs.ac.metropolitan.gibson.entity;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Data
@Entity
@NoArgsConstructor
@Table(name = "stavkaprodaje")
public class StavkaProdaje {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    @Column(name = "id_stavke")
    private Integer id;
    @JoinColumn(name = "id_prodaje", referencedColumnName = "id_prodaje")
    @ManyToOne
    private Prodaja prodaja;
    @JoinColumn(name = "id_proizvoda", referencedColumnName = "id_proizvoda", insertable = false, updatable = false)
    @ManyToOne
    private Gitara gitara;
    @JoinColumn(name = "id_proizvoda", referencedColumnName = "id_proizvoda", insertable = false, updatable = false)
    @ManyToOne
    private Mandolina mandolina;
    @Column(name = "kolicina")
    private Integer kolicina;
}
