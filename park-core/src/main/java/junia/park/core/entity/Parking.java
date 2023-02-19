package junia.park.core.entity;

import javax.persistence.*;

@Entity
public class Parking {

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Id
    public int id;
    private String nameParking;
    @OneToOne
    private PlaceSpeciales placeSpeciales;
    @OneToOne
    private Localisation localisation;


    private int nbrPlace;
    private boolean estGratuit;
    private int hauteur; //cm
    private float prix_1h;

    public Parking() {
    }

    public String getNameParking() {
        return nameParking;
    }

    public void setNameParking(String nameParking) {
        this.nameParking = nameParking;
    }

    public PlaceSpeciales getPlaceSpeciales() {
        return placeSpeciales;
    }

    public void setPlaceSpeciales(PlaceSpeciales placeSpeciales) {
        this.placeSpeciales = placeSpeciales;
    }

    public Localisation getLocalisation() {
        return localisation;
    }

    public void setLocalisation(Localisation localisation) {
        this.localisation = localisation;
    }

    public int getNbrPlace() {
        return nbrPlace;
    }

    public void setNbrPlace(int nbrPlace) {
        this.nbrPlace = nbrPlace;
    }

    public boolean isEstGratuit() {
        return estGratuit;
    }

    public void setEstGratuit(boolean estGratuit) {
        this.estGratuit = estGratuit;
    }

    public int getHauteur() {
        return hauteur;
    }

    public void setHauteur(int hauteur) {
        this.hauteur = hauteur;
    }

    public float getPrix_1h() {
        return prix_1h;
    }

    public void setPrix_1h(float prix_1h) {
        this.prix_1h = prix_1h;
    }
}
