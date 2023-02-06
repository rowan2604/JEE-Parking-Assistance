package junia.park.core.entity;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import java.util.List;

@Entity
public class Parking extends GenericEntity {


    private String name;

    @OneToMany(mappedBy = "parking")
    private List<Ville> villes;


    public Parking() {
    }




    public String getName() {
        return name;
    }


    public void setName(final String nameValue) {
        name = nameValue;
    }


    public List<Ville> getVilles() {
        return villes;
    }


    public void setVilles(final List<Ville> villesValue) {
        villes = villesValue;
    }
}
