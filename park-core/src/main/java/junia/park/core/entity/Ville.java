package junia.park.core.entity;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import java.util.List;

@Entity
public class Ville extends GenericEntity {

    private String name;

    @OneToMany(mappedBy = "ville")
    private List<Localisation> localisations;

    @ManyToOne
    private Parking parking;


    public Ville() {
    }


    public String getName() {
        return name;
    }


    public void setName(final String nameValue) {
        name = nameValue;
    }


    public List<Localisation> getProjects() {
        return localisations;
    }


    public void setProjects(final List<Localisation> localisationValue) {
        localisations = localisationValue;
    }


    public Parking getParking() {
        return parking;
    }


    public void setParking(final Parking parkingValue) {
        parking = parkingValue;
    }
}
