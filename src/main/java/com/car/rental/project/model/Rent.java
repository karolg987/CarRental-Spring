package com.car.rental.project.model;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "rent")
public class Rent {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private int kwota;
    private String miejsceWypozyczenia;
    private String miejsceOddania;
    private String dataWypozyczenia;
    private String dataOddania;
    private String status; //rezerwacja lub wypozyczenie

    @ManyToMany(cascade = { CascadeType.MERGE, CascadeType.PERSIST })
    @JoinTable(
            name = "Rent_users",
            joinColumns = { @JoinColumn(name = "rent_id") },
            inverseJoinColumns = { @JoinColumn(name = "user_id") }
    )
    private Set<User> users;

    @ManyToMany(cascade = { CascadeType.MERGE, CascadeType.PERSIST })
    @JoinTable(
            name = "Rent_offers",
            joinColumns = { @JoinColumn(name = "rent_id") },
            inverseJoinColumns = { @JoinColumn(name = "offer_id") }
    )
    private Set<Offer> offers;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public int getKwota() {
        return kwota;
    }

    public void setKwota(int kwota) {
        this.kwota = kwota;
    }

    public String getMiejsceWypozyczenia() {
        return miejsceWypozyczenia;
    }

    public void setMiejsceWypozyczenia(String miejsceWypozyczenia) {
        this.miejsceWypozyczenia = miejsceWypozyczenia;
    }

    public String getMiejsceOddania() {
        return miejsceOddania;
    }

    public void setMiejsceOddania(String miejsceOddania) {
        this.miejsceOddania = miejsceOddania;
    }

    public String getDataWypozyczenia() {
        return dataWypozyczenia;
    }

    public void setDataWypozyczenia(String dataWypozyczenia) {
        this.dataWypozyczenia = dataWypozyczenia;
    }

    public String getDataOddania() {
        return dataOddania;
    }

    public void setDataOddania(String dataOddania) {
        this.dataOddania = dataOddania;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Set<User> getUsers() {
        return users;
    }

    public void setUsers(Set<User> users) {
        this.users = users;
    }

    public Set<Offer> getOffers() {
        return offers;
    }

    public void setOffers(Set<Offer> offers) {
        this.offers = offers;
    }
}
