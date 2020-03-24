package com.car.rental.project.model;

import java.util.Set;

public class OfferWithCar {
    private String mark;
    private String model;
    private String yearOfProduction;
    private Set<CarPhoto> carPhoto;
    private String description;
    private Integer price;

    public String getMark() {
        return mark;
    }

    public void setMark(String mark) {
        this.mark = mark;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getYearOfProduction() {
        return yearOfProduction;
    }

    public void setYearOfProduction(String yearOfProduction) {
        this.yearOfProduction = yearOfProduction;
    }

    public Set<CarPhoto> getCarPhoto() {
        return carPhoto;
    }

    public void setCarPhoto(Set<CarPhoto> carPhoto) {
        this.carPhoto = carPhoto;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

}
