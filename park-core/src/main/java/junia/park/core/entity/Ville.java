package junia.park.core.entity;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.persistence.*;
import java.util.List;

@Entity
public class Ville {
    private final static Logger LOGGER = LoggerFactory.getLogger(Ville.class);

    @Id
    public int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @OneToMany(mappedBy = "ville")
    private List<Localisation> localisations;
    private String nom;
    private int nbrPlace;
    private int nbrParking;
    private int depVille;
    private String region;

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public int getNbrPlace() {
        return nbrPlace;
    }

    public void setNbrPlace(int nbrPlace) {
        this.nbrPlace = nbrPlace;
    }

    public int getNbrParking() {
        return nbrParking;
    }

    public void setNbrParking(int nbrParking) {
        this.nbrParking = nbrParking;
    }

    public int getDepVille() {
        return depVille;
    }

    public void setDepVille(int depVille) {
        this.depVille = depVille;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public List<Localisation> getLocalisations() {
        LOGGER.debug("aled"+localisations);
        return localisations;
    }

    public void setLocalisations(List<Localisation> localisations) {
        this.localisations = localisations;
    }



    public Ville() {

    }



}
