package com.systemsinmotion.petrescue.web.bean;

import java.io.Serializable;
import java.util.List;

import com.sun.istack.internal.NotNull;

public class AdoptionApplication implements Serializable {

	private static final long serialVersionUID = 1118000426493607246L;

	@NotNull
	private String firstName;
	@NotNull
	private String lastName;
	private String address1;
	private String address2;
	private String zipCode;
	private String city;
	private String homePhone;
	private String mobilePhone;
	private String email1;
	private String email2;
	private String livingSituation;
	private String yearsLived;
	private String monthsLived;
	private Boolean petsAllowed;
	private Boolean petsAllowedProof;
	private Integer adultCount;
	private Integer childCount;
	private List<Integer> childAges;
	private Boolean familyAware;
	private String familyAwareNoReason;
	private String caretaker;
	private Integer previousPetCount;
	private List<PreviousPet> previousPets;

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public String getHomePhone() {
		return homePhone;
	}

	public void setHomePhone(String homePhone) {
		this.homePhone = homePhone;
	}

	public String getMobilePhone() {
		return mobilePhone;
	}

	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}

	public String getEmail1() {
		return email1;
	}

	public void setEmail1(String email1) {
		this.email1 = email1;
	}

	public String getEmail2() {
		return email2;
	}

	public void setEmail2(String email2) {
		this.email2 = email2;
	}

	public String getLivingSituation() {
		return livingSituation;
	}

	public void setLivingSituation(String livingSituation) {
		this.livingSituation = livingSituation;
	}

	public String getYearsLived() {
		return yearsLived;
	}

	public void setYearsLived(String yearsLived) {
		this.yearsLived = yearsLived;
	}

	public String getMonthsLived() {
		return monthsLived;
	}

	public void setMonthsLived(String monthsLived) {
		this.monthsLived = monthsLived;
	}

	public Boolean getPetsAllowed() {
		return petsAllowed;
	}

	public void setPetsAllowed(Boolean petsAllowed) {
		this.petsAllowed = petsAllowed;
	}

	public Boolean getPetsAllowedProof() {
		return petsAllowedProof;
	}

	public void setPetsAllowedProof(Boolean petsAllowedProof) {
		this.petsAllowedProof = petsAllowedProof;
	}

	public Boolean getFamilyAware() {
		return familyAware;
	}

	public void setFamilyAware(Boolean familyAware) {
		this.familyAware = familyAware;
	}

	public String getFamilyAwareNoReason() {
		return familyAwareNoReason;
	}

	public void setFamilyAwareNoReason(String familyAwareNoReason) {
		this.familyAwareNoReason = familyAwareNoReason;
	}

	public Integer getPreviousPetCount() {
		return previousPetCount;
	}

	public void setPreviousPetCount(Integer previousPetCount) {
		this.previousPetCount = previousPetCount;
	}


	public Integer getAdultCount() {
		return adultCount;
	}

	public void setAdultCount(Integer adultCount) {
		this.adultCount = adultCount;
	}

	public Integer getChildCount() {
		return childCount;
	}

	public void setChildCount(Integer childCount) {
		this.childCount = childCount;
	}

	public List<Integer> getChildAges() {
		return childAges;
	}

	public void setChildAges(List<Integer> childAges) {
		this.childAges = childAges;
	}

	public String getCaretaker() {
		return caretaker;
	}

	public void setCaretaker(String caretaker) {
		this.caretaker = caretaker;
	}

	public List<PreviousPet> getPreviousPets() {
		return previousPets;
	}

	public void setPreviousPets(List<PreviousPet> previousPetRecord) {
		this.previousPets = previousPetRecord;
	}

}
