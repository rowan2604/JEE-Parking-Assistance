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
    private int nbrPlace;
    private boolean estGratuit;
    private int hauteur; //cm
    private float prix_1h;



    public Parking() {
    }





}
