package junia.park.core.entity;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import java.util.List;

@Entity
public class Ville extends GenericEntity {

    private String name;
    private int idVille;
    private int nbrPlace;
    private int nbrParking;

    @OneToMany
    private List<Parking> parkings;


    public Ville() {

    }



}
