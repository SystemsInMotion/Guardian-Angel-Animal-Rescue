//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.4 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2012.09.25 at 02:17:58 PM EDT 
//


package org.petfinder.entity;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlSchemaType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.datatype.XMLGregorianCalendar;

/**
 * <p>Java class for petfinderPetRecord complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="petfinderPetRecord">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="id" type="{}petIdType"/>
 *         &lt;element name="shelterId" type="{}shelterIdType"/>
 *         &lt;element name="shelterPetId" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="name" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="animal" type="{}animalType"/>
 *         &lt;element name="breeds" type="{}petfinderBreedList"/>
 *         &lt;element name="mix">
 *           &lt;simpleType>
 *             &lt;restriction base="{http://www.w3.org/2001/XMLSchema}string">
 *               &lt;enumeration value="yes"/>
 *               &lt;enumeration value="no"/>
 *             &lt;/restriction>
 *           &lt;/simpleType>
 *         &lt;/element>
 *         &lt;element name="age" type="{}petAgeType"/>
 *         &lt;element name="sex" type="{}petGenderType"/>
 *         &lt;element name="size" type="{}petSizeType"/>
 *         &lt;element name="options">
 *           &lt;complexType>
 *             &lt;complexContent>
 *               &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *                 &lt;sequence>
 *                   &lt;element name="option" type="{}petOptionType" maxOccurs="unbounded" minOccurs="0"/>
 *                 &lt;/sequence>
 *               &lt;/restriction>
 *             &lt;/complexContent>
 *           &lt;/complexType>
 *         &lt;/element>
 *         &lt;element name="description" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="lastUpdate" type="{http://www.w3.org/2001/XMLSchema}dateTime"/>
 *         &lt;element name="status" type="{}petStatusType"/>
 *         &lt;element name="media">
 *           &lt;complexType>
 *             &lt;complexContent>
 *               &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *                 &lt;sequence>
 *                   &lt;element name="photos" minOccurs="0">
 *                     &lt;complexType>
 *                       &lt;complexContent>
 *                         &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *                           &lt;sequence>
 *                             &lt;element name="photo" type="{}petPhotoType" maxOccurs="15" minOccurs="0"/>
 *                           &lt;/sequence>
 *                         &lt;/restriction>
 *                       &lt;/complexContent>
 *                     &lt;/complexType>
 *                   &lt;/element>
 *                 &lt;/sequence>
 *               &lt;/restriction>
 *             &lt;/complexContent>
 *           &lt;/complexType>
 *         &lt;/element>
 *         &lt;element name="contact" type="{}petContactType" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "petfinderPetRecord", propOrder = {
    "id",
    "shelterId",
    "shelterPetId",
    "name",
    "animal",
    "breeds",
    "mix",
    "age",
    "sex",
    "size",
    "options",
    "description",
    "lastUpdate",
    "status",
    "media",
    "contact"
})
public class PetfinderPetRecord implements Serializable {

	private static final long serialVersionUID = 3801331285142302568L;

	@XmlElement(required = true)
    protected BigInteger id;
	
    @XmlElement(required = true)
    protected String shelterId;
    
    protected String shelterPetId;
    
    @XmlElement(required = true)
    protected String name;
    
    @XmlElement(required = true)
    protected AnimalType animal;
    
    @XmlElement(required = true)
    protected PetfinderBreedList breeds;
    
    @XmlElement(required = true)
    protected String mix;
    
    @XmlElement(required = true)
    protected PetAgeType age;
    
    @XmlElement(required = true)
    protected PetGenderType sex;
    
    @XmlElement(required = true)
    protected PetSizeType size;
    
    @XmlElement(required = true)
    protected PetfinderPetRecord.Options options;
    
    @XmlElement(required = true)
    protected String description;
    
    @XmlElement(required = true)
    @XmlSchemaType(name = "dateTime")
    protected XMLGregorianCalendar lastUpdate;
    
    @XmlElement(required = true)
    protected PetStatusType status;
    
    @XmlElement(required = true)
    protected PetfinderPetRecord.Media media;
    
    protected PetContactType contact;

    /**
     * Gets the value of the id property.
     * 
     * @return
     *     possible object is
     *     {@link BigInteger }
     *     
     */
    public BigInteger getId() {
        return id;
    }

    /**
     * Sets the value of the id property.
     * 
     * @param value
     *     allowed object is
     *     {@link BigInteger }
     *     
     */
    public void setId(BigInteger value) {
        this.id = value;
    }

    /**
     * Gets the value of the shelterId property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getShelterId() {
        return shelterId;
    }

    /**
     * Sets the value of the shelterId property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setShelterId(String value) {
        this.shelterId = value;
    }

    /**
     * Gets the value of the shelterPetId property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getShelterPetId() {
        return shelterPetId;
    }

    /**
     * Sets the value of the shelterPetId property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setShelterPetId(String value) {
        this.shelterPetId = value;
    }

    /**
     * Gets the value of the name property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getName() {
        return name;
    }

    /**
     * Sets the value of the name property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setName(String value) {
        this.name = value;
    }

    /**
     * Gets the value of the animal property.
     * 
     * @return
     *     possible object is
     *     {@link AnimalType }
     *     
     */
    public AnimalType getAnimal() {
        return animal;
    }

    /**
     * Sets the value of the animal property.
     * 
     * @param value
     *     allowed object is
     *     {@link AnimalType }
     *     
     */
    public void setAnimal(AnimalType value) {
        this.animal = value;
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
     * Gets the value of the mix property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getMix() {
        return mix;
    }

    /**
     * Sets the value of the mix property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setMix(String value) {
        this.mix = value;
    }

    /**
     * Gets the value of the age property.
     * 
     * @return
     *     possible object is
     *     {@link PetAgeType }
     *     
     */
    public PetAgeType getAge() {
        return age;
    }

    /**
     * Sets the value of the age property.
     * 
     * @param value
     *     allowed object is
     *     {@link PetAgeType }
     *     
     */
    public void setAge(PetAgeType value) {
        this.age = value;
    }

    /**
     * Gets the value of the sex property.
     * 
     * @return
     *     possible object is
     *     {@link PetGenderType }
     *     
     */
    public PetGenderType getSex() {
        return sex;
    }

    /**
     * Sets the value of the sex property.
     * 
     * @param value
     *     allowed object is
     *     {@link PetGenderType }
     *     
     */
    public void setSex(PetGenderType value) {
        this.sex = value;
    }

    /**
     * Gets the value of the size property.
     * 
     * @return
     *     possible object is
     *     {@link PetSizeType }
     *     
     */
    public PetSizeType getSize() {
        return size;
    }

    /**
     * Sets the value of the size property.
     * 
     * @param value
     *     allowed object is
     *     {@link PetSizeType }
     *     
     */
    public void setSize(PetSizeType value) {
        this.size = value;
    }

    /**
     * Gets the value of the options property.
     * 
     * @return
     *     possible object is
     *     {@link PetfinderPetRecord.Options }
     *     
     */
    public PetfinderPetRecord.Options getOptions() {
        return options;
    }

    /**
     * Sets the value of the options property.
     * 
     * @param value
     *     allowed object is
     *     {@link PetfinderPetRecord.Options }
     *     
     */
    public void setOptions(PetfinderPetRecord.Options value) {
        this.options = value;
    }

    /**
     * Gets the value of the description property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getDescription() {
        return description;
    }

    /**
     * Sets the value of the description property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setDescription(String value) {
        this.description = value;
    }

    /**
     * Gets the value of the lastUpdate property.
     * 
     * @return
     *     possible object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    public XMLGregorianCalendar getLastUpdate() {
        return lastUpdate;
    }

    /**
     * Sets the value of the lastUpdate property.
     * 
     * @param value
     *     allowed object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    public void setLastUpdate(XMLGregorianCalendar value) {
        this.lastUpdate = value;
    }

    /**
     * Gets the value of the status property.
     * 
     * @return
     *     possible object is
     *     {@link PetStatusType }
     *     
     */
    public PetStatusType getStatus() {
        return status;
    }

    /**
     * Sets the value of the status property.
     * 
     * @param value
     *     allowed object is
     *     {@link PetStatusType }
     *     
     */
    public void setStatus(PetStatusType value) {
        this.status = value;
    }

    /**
     * Gets the value of the media property.
     * 
     * @return
     *     possible object is
     *     {@link PetfinderPetRecord.Media }
     *     
     */
    public PetfinderPetRecord.Media getMedia() {
        return media;
    }

    /**
     * Sets the value of the media property.
     * 
     * @param value
     *     allowed object is
     *     {@link PetfinderPetRecord.Media }
     *     
     */
    public void setMedia(PetfinderPetRecord.Media value) {
        this.media = value;
    }

    /**
     * Gets the value of the contact property.
     * 
     * @return
     *     possible object is
     *     {@link PetContactType }
     *     
     */
    public PetContactType getContact() {
        return contact;
    }

    /**
     * Sets the value of the contact property.
     * 
     * @param value
     *     allowed object is
     *     {@link PetContactType }
     *     
     */
    public void setContact(PetContactType value) {
        this.contact = value;
    }


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
     *         &lt;element name="photos" minOccurs="0">
     *           &lt;complexType>
     *             &lt;complexContent>
     *               &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
     *                 &lt;sequence>
     *                   &lt;element name="photo" type="{}petPhotoType" maxOccurs="15" minOccurs="0"/>
     *                 &lt;/sequence>
     *               &lt;/restriction>
     *             &lt;/complexContent>
     *           &lt;/complexType>
     *         &lt;/element>
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
        "photos"
    })
    public static class Media {

        protected PetfinderPetRecord.Media.Photos photos;

        /**
         * Gets the value of the photos property.
         * 
         * @return
         *     possible object is
         *     {@link PetfinderPetRecord.Media.Photos }
         *     
         */
        public PetfinderPetRecord.Media.Photos getPhotos() {
            return photos;
        }

        /**
         * Sets the value of the photos property.
         * 
         * @param value
         *     allowed object is
         *     {@link PetfinderPetRecord.Media.Photos }
         *     
         */
        public void setPhotos(PetfinderPetRecord.Media.Photos value) {
            this.photos = value;
        }


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
         *         &lt;element name="photo" type="{}petPhotoType" maxOccurs="15" minOccurs="0"/>
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
            "photo"
        })
        public static class Photos {

            protected List<PetPhotoType> photo;

            /**
             * Gets the value of the photo property.
             * 
             * <p>
             * This accessor method returns a reference to the live list,
             * not a snapshot. Therefore any modification you make to the
             * returned list will be present inside the JAXB object.
             * This is why there is not a <CODE>set</CODE> method for the photo property.
             * 
             * <p>
             * For example, to add a new item, do as follows:
             * <pre>
             *    getPhoto().add(newItem);
             * </pre>
             * 
             * 
             * <p>
             * Objects of the following type(s) are allowed in the list
             * {@link PetPhotoType }
             * 
             * 
             */
            public List<PetPhotoType> getPhoto() {
                if (photo == null) {
                    photo = new ArrayList<PetPhotoType>();
                }
                return this.photo;
            }

        }

    }


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
     *         &lt;element name="option" type="{}petOptionType" maxOccurs="unbounded" minOccurs="0"/>
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
        "option"
    })
    public static class Options {

        protected List<PetOptionType> option;

        /**
         * Gets the value of the option property.
         * 
         * <p>
         * This accessor method returns a reference to the live list,
         * not a snapshot. Therefore any modification you make to the
         * returned list will be present inside the JAXB object.
         * This is why there is not a <CODE>set</CODE> method for the option property.
         * 
         * <p>
         * For example, to add a new item, do as follows:
         * <pre>
         *    getOption().add(newItem);
         * </pre>
         * 
         * 
         * <p>
         * Objects of the following type(s) are allowed in the list
         * {@link PetOptionType }
         * 
         * 
         */
        public List<PetOptionType> getOption() {
            if (option == null) {
                option = new ArrayList<PetOptionType>();
            }
            return this.option;
        }

    }

}
