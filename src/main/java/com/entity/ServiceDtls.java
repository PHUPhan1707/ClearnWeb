package com.entity;

public class ServiceDtls
{
    private int serviceid;
    private String servicename;
    private String price;
    private String servicecategory;
    private String status;
    private String photoName;
    private String email;
    public ServiceDtls(){
        super();
    }
public ServiceDtls(String servicename, String price, String servicecategory, String status, String photoName, String email){
    super();
    this.servicename = servicename;
    this.price = price;
    this.servicecategory = servicecategory;
    this.status = status;
    this.photoName = photoName;
    this.email = email;
}
    public int getServiceid() {
        return serviceid;
    }

    public void setServiceid(int serviceid) {
        this.serviceid = serviceid;
    }

    public String getServicename() {
        return servicename;
    }

    public void setServicename(String servicename) {
        this.servicename = servicename;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getServicecategory() {
        return servicecategory;
    }

    public void setServicecategory(String servicecategory) {
        this.servicecategory = servicecategory;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPhotoName() {
        return photoName;
    }

    public void setPhotoName(String photoName) {
        this.photoName = photoName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }


    @Override
    public String toString() {
        return "ServiceDtls{" +
                "serviceid='" + serviceid +'\'' +
                ", servicename='" + servicename + '\'' +
                ", price=" + price +
                ", servicecategory='" + servicecategory + '\'' +
                ", status='" + status + '\'' +
                ", photoName='" + photoName + '\'' +
                ", email='" + email + '\'' +
                '}';
    }

}
