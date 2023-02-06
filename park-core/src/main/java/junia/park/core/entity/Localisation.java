package junia.park.core.entity;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

@Entity
public class Localisation extends GenericEntity {

    private String adresse;

    private String longitude;
    private String latitude;


    public Localisation() {
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public String getLongitude() {
        return longitude;
    }

    public void setLongitude(String longitude) {
        this.longitude = longitude;
    }

    public String getLatitude() {
        return latitude;
    }

    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }
}
