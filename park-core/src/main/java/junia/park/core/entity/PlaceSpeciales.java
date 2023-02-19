package junia.park.core.entity;

import javax.persistence.*;

@Entity
public class PlaceSpeciales{
    @Id
    public int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @OneToOne
    private Parking parking;
    private int nbrHandicapes;
    private int nbrPVoiturelaceElectriques;
    private int nbrVelo;
    private int nbrCovoiturage;

    public Parking getParking() {
        return parking;
    }

    public void setParking(Parking parking) {
        this.parking = parking;
    }

    public int getNbrHandicapes() {
        return nbrHandicapes;
    }

    public void setNbrHandicapes(int nbrHandicapes) {
        this.nbrHandicapes = nbrHandicapes;
    }

    public int getNbrPVoiturelaceElectriques() {
        return nbrPVoiturelaceElectriques;
    }

    public void setNbrPVoiturelaceElectriques(int nbrPVoiturelaceElectriques) {
        this.nbrPVoiturelaceElectriques = nbrPVoiturelaceElectriques;
    }

    public int getNbrVelo() {
        return nbrVelo;
    }

    public void setNbrVelo(int nbrVelo) {
        this.nbrVelo = nbrVelo;
    }

    public int getNbrCovoiturage() {
        return nbrCovoiturage;
    }

    public void setNbrCovoiturage(int nbrCovoiturage) {
        this.nbrCovoiturage = nbrCovoiturage;
    }





    public PlaceSpeciales() {
    }








}
