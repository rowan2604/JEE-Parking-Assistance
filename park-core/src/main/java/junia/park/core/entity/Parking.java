package junia.park.core.entity;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import java.util.List;

@Entity
public class Parking extends GenericEntity {


    private String name;
    @ManyToOne
    private Ville ville;
    @OneToOne
    private PlaceSpeciales placeSpeciales;
    @OneToOne
    private Localisation localisation;
    private int id;
    private int nbr_place;
    private boolean is_free;
    private int hauteur; //cm



    public Parking() {
    }





}
