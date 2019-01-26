package pl.hit.spring.data.model;

import javax.persistence.*;

@Entity
@Table(name = "address")
public class Address {

    //  street houseNumber/apartmentNumber                  Rzeźnicza 28/31
    //  postCode City                                       50-130 Wrocław

    @Id
    @GeneratedValue
    private int idAddress;

    @OneToOne
    private Person idPerson;

    @Column(name = "street")
    private String street;

    @Column(name = "houseNumber")
    private int houseNumber;

    @Column(name = "apartmentNumber")
    private int apartmentNumber;

    @Column(name = "postCode")
    private String postCode;

    @Column(name = "city")
    private String city;

    public Address(Person idPerson, String street, int houseNumber, int apartmentNumber, String postCode, String city) {
        this.idPerson = idPerson;
        this.street = street;
        this.houseNumber = houseNumber;
        this.apartmentNumber = apartmentNumber;
        this.postCode = postCode;
        this.city = city;
    }

    public int getIdAddress() {
        return idAddress;
    }

    public void setIdAddress(int idAddress) {
        this.idAddress = idAddress;
    }

    public Person getIdPerson() {
        return idPerson;
    }

    public void setIdPerson(Person idPerson) {
        this.idPerson = idPerson;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public int getHouseNumber() {
        return houseNumber;
    }

    public void setHouseNumber(int houseNumber) {
        this.houseNumber = houseNumber;
    }

    public int getApartmentNumber() {
        return apartmentNumber;
    }

    public void setApartmentNumber(int apartmentNumber) {
        this.apartmentNumber = apartmentNumber;
    }

    public String getPostCode() {
        return postCode;
    }

    public void setPostCode(String postCode) {
        this.postCode = postCode;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
}
