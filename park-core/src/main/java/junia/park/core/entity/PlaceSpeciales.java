package junia.park.core.entity;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import java.util.List;

@Entity
public class PlaceSpeciales extends GenericEntity{


    private int id;
    @OneToOne
    private Parking parking;
    private int nbrHandicapes;
    private int nbrPVoiturelaceElectriques;
    private int nbrVelo;
    private int nbrCovoiturage;



    public PlaceSpeciales() {
    }








}
