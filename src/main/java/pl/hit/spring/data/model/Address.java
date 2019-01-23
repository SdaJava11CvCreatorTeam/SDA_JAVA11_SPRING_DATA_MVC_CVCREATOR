package pl.hit.spring.data.model;

public class Address {

    //  street houseNumber/apartmentNumber                  Rzeźnicza 28/31
    //  postCode City                                       50-130 Wrocław

    private long id;
    private String street;
    private int houseNumber;
    private int apartmentNumber;
    private String postCode;
    private String city;

    public Address(String street, int houseNumber, int apartmentNumber, String postCode, String city) {
        this.street = street;
        this.houseNumber = houseNumber;
        this.apartmentNumber = apartmentNumber;
        this.postCode = postCode;
        this.city = city;
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
