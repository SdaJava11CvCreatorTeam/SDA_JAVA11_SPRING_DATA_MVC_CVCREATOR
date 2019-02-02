package pl.hit.spring.core.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.hit.spring.data.model.Address;
import pl.hit.spring.data.repositories.AddressRepository;

@Service
@Transactional
public class AddressService {

    AddressRepository addressRepository;

    @Autowired
    public AddressService(AddressRepository addressRepository) {
        this.addressRepository = addressRepository;
    }

    public Address getAddress(int idPerson) {
        Address address = new Address();

        address.setIdAddress(getIdAddress(idPerson));
        address.setStreet(getStreet(getIdAddress(idPerson)));
        address.setHouseNumber(getHouseNumber(getIdAddress(idPerson)));
        address.setApartmentNumber(getApartmentNumber(getIdAddress(idPerson)));
        address.setPostCode(getPostCode(getIdAddress(idPerson)));
        address.setCity(getCity(getIdAddress(idPerson)));

        return address;
    }

    private int getIdAddress(int idPerson) {
        return addressRepository.getIdAddress(idPerson);
    }

    private int getIdPerson(int idAddress) {
        return addressRepository.getIdPerson(idAddress);
    }

    private String getStreet(int idAddress) {
        return addressRepository.getStreet(idAddress);
    }

    private int getHouseNumber(int idAddress) {
        if (addressRepository.getHouseNumber(idAddress) == null) {
            return -1;
        } else {
            return Integer.valueOf(addressRepository.getHouseNumber(idAddress));
        }
    }

    private int getApartmentNumber(int idAddress) {
        if (addressRepository.getApartmentNumber(idAddress) == null) {
            return -1;
        } else {
            return Integer.valueOf(addressRepository.getApartmentNumber(idAddress));
        }
    }

    private String getPostCode(int idAddress) {
        return addressRepository.getPostCode(idAddress);
    }

    private String getCity(int idAddress) {
        return addressRepository.getCity(idAddress);
    }
}