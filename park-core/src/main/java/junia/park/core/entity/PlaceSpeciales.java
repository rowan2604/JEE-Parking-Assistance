package junia.park.core.entity;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import java.util.List;

@Entity
public class PlaceSpeciales extends GenericEntity{


    private String name;

    @OneToMany(mappedBy = "placeSpeciales")
    private List<Localisation> localisations;


    public PlaceSpeciales() {
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


    public void setProjects(final List<Localisation> projectsValue) {
        localisations = projectsValue;
    }


}
