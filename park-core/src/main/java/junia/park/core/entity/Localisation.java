package junia.park.core.entity;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

@Entity
public class Localisation extends GenericEntity {

    private String name;

    @ManyToOne
    private PlaceSpeciales placeSpeciales;

    @ManyToOne
    private Ville ville;


    public Localisation() {
    }


    public String getName() {
        return name;
    }


    public void setName(final String nameValue) {
        name = nameValue;
    }


    public PlaceSpeciales getPlaceSpeciales() {
        return placeSpeciales;
    }


    public void setPlaceSpeciales(final PlaceSpeciales placeSpecialesValue) {
        placeSpeciales = placeSpecialesValue;
    }


    public Ville getVille() {
        return ville;
    }


    public void setVille(final Ville villeValue) {
        ville = villeValue;
    }
}
