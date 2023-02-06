package junia.park.core.entity;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import java.util.List;

@Entity
public class Ville extends GenericEntity {

    private String name;

    @OneToMany
    private List<Parking> parkings;


    public Ville() {

    }



}
