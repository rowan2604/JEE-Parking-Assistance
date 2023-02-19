package junia.park.core.entity;

import javax.persistence.*;

@Entity
public class Localisation{

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Id
    public int id;
    private String adresse;
    private String coordoneeGPS;
    private String photo;

    public String getCoordoneeGPS() {
        return coordoneeGPS;
    }

    public void setCoordoneeGPS(String coordoneeGPS) {
        this.coordoneeGPS = coordoneeGPS;
    }

    @ManyToOne
    private Ville ville;
    @OneToOne
    private Parking parking;
    public Localisation() {
    }


    public Parking getParking() {
        return parking;
    }

    public void setParking(Parking parking) {
        this.parking = parking;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }


    public void setVille(Ville ville) {
        this.ville = ville;
    }

    public String getAdresse() {
        return adresse;
    }

    public Ville getVille() {
        return ville;
    }



    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }
}
