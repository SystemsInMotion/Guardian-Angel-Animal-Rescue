//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.4 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2012.09.25 at 02:17:58 PM EDT 
//


package org.petfinder.entity;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for anonymous complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType>
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="header" type="{}petfinderHeaderType"/>
 *         &lt;element name="lastOffset" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;choice>
 *           &lt;element name="auth" type="{}petfinderAuthData"/>
 *           &lt;element name="pet" type="{}petfinderPetRecord"/>
 *           &lt;element name="petIds" type="{}petfinderPetIdList"/>
 *           &lt;element name="pets" type="{}petfinderPetRecordList"/>
 *           &lt;element name="breeds" type="{}petfinderBreedList"/>
 *           &lt;element name="shelter" type="{}petfinderShelterRecord"/>
 *           &lt;element name="shelters" type="{}petfinderShelterRecordList"/>
 *         &lt;/choice>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "header",
    "lastOffset",
    "auth",
    "pet",
    "petIds",
    "pets",
    "breeds",
    "shelter",
    "shelters"
})
@XmlRootElement(name = "petfinder")
public class Petfinder {

    @XmlElement(required = true)
    protected PetfinderHeaderType header;
    protected String lastOffset;
    protected PetfinderAuthData auth;
    protected PetfinderPetRecord pet;
    protected PetfinderPetIdList petIds;
    protected PetfinderPetRecordList pets;
    protected PetfinderBreedList breeds;
    protected PetfinderShelterRecord shelter;
    protected PetfinderShelterRecordList shelters;

    /**
     * Gets the value of the header property.
     * 
     * @return
     *     possible object is
     *     {@link PetfinderHeaderType }
     *     
     */
    public PetfinderHeaderType getHeader() {
        return header;
    }

    /**
     * Sets the value of the header property.
     * 
     * @param value
     *     allowed object is
     *     {@link PetfinderHeaderType }
     *     
     */
    public void setHeader(PetfinderHeaderType value) {
        this.header = value;
    }

    /**
     * Gets the value of the lastOffset property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getLastOffset() {
        return lastOffset;
    }

    /**
     * Sets the value of the lastOffset property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setLastOffset(String value) {
        this.lastOffset = value;
    }

    /**
     * Gets the value of the auth property.
     * 
     * @return
     *     possible object is
     *     {@link PetfinderAuthData }
     *     
     */
    public PetfinderAuthData getAuth() {
        return auth;
    }

    /**
     * Sets the value of the auth property.
     * 
     * @param value
     *     allowed object is
     *     {@link PetfinderAuthData }
     *     
     */
    public void setAuth(PetfinderAuthData value) {
        this.auth = value;
    }

    /**
     * Gets the value of the pet property.
     * 
     * @return
     *     possible object is
     *     {@link PetfinderPetRecord }
     *     
     */
    public PetfinderPetRecord getPet() {
        return pet;
    }

    /**
     * Sets the value of the pet property.
     * 
     * @param value
     *     allowed object is
     *     {@link PetfinderPetRecord }
     *     
     */
    public void setPet(PetfinderPetRecord value) {
        this.pet = value;
    }

    /**
     * Gets the value of the petIds property.
     * 
     * @return
     *     possible object is
     *     {@link PetfinderPetIdList }
     *     
     */
    public PetfinderPetIdList getPetIds() {
        return petIds;
    }

    /**
     * Sets the value of the petIds property.
     * 
     * @param value
     *     allowed object is
     *     {@link PetfinderPetIdList }
     *     
     */
    public void setPetIds(PetfinderPetIdList value) {
        this.petIds = value;
    }

    /**
     * Gets the value of the pets property.
     * 
     * @return
     *     possible object is
     *     {@link PetfinderPetRecordList }
     *     
     */
    public PetfinderPetRecordList getPets() {
        return pets;
    }

    /**
     * Sets the value of the pets property.
     * 
     * @param value
     *     allowed object is
     *     {@link PetfinderPetRecordList }
     *     
     */
    public void setPets(PetfinderPetRecordList value) {
        this.pets = value;
    }

    /**
     * Gets the value of the breeds property.
     * 
     * @return
     *     possible object is
     *     {@link PetfinderBreedList }
     *     
     */
    public PetfinderBreedList getBreeds() {
        return breeds;
    }

    /**
     * Sets the value of the breeds property.
     * 
     * @param value
     *     allowed object is
     *     {@link PetfinderBreedList }
     *     
     */
    public void setBreeds(PetfinderBreedList value) {
        this.breeds = value;
    }

    /**
     * Gets the value of the shelter property.
     * 
     * @return
     *     possible object is
     *     {@link PetfinderShelterRecord }
     *     
     */
    public PetfinderShelterRecord getShelter() {
        return shelter;
    }

    /**
     * Sets the value of the shelter property.
     * 
     * @param value
     *     allowed object is
     *     {@link PetfinderShelterRecord }
     *     
     */
    public void setShelter(PetfinderShelterRecord value) {
        this.shelter = value;
    }

    /**
     * Gets the value of the shelters property.
     * 
     * @return
     *     possible object is
     *     {@link PetfinderShelterRecordList }
     *     
     */
    public PetfinderShelterRecordList getShelters() {
        return shelters;
    }

    /**
     * Sets the value of the shelters property.
     * 
     * @param value
     *     allowed object is
     *     {@link PetfinderShelterRecordList }
     *     
     */
    public void setShelters(PetfinderShelterRecordList value) {
        this.shelters = value;
    }

}
