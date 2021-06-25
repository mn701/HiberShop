package myApp;
// Generated 25-Jun-2021 10:28:37 by Hibernate Tools 4.3.1



/**
 * Brand generated by hbm2java
 */
public class Brand  implements java.io.Serializable {


     private Integer id;
     private String brand;
     private String country;
     private String description;
     private String officialSite;
     private String buymaLink;
     private String introduction;

    public Brand() {
    }

    public Brand(String brand, String country, String description, String officialSite, String buymaLink, String introduction) {
       this.brand = brand;
       this.country = country;
       this.description = description;
       this.officialSite = officialSite;
       this.buymaLink = buymaLink;
       this.introduction = introduction;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getBrand() {
        return this.brand;
    }
    
    public void setBrand(String brand) {
        this.brand = brand;
    }
    public String getCountry() {
        return this.country;
    }
    
    public void setCountry(String country) {
        this.country = country;
    }
    public String getDescription() {
        return this.description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
    public String getOfficialSite() {
        return this.officialSite;
    }
    
    public void setOfficialSite(String officialSite) {
        this.officialSite = officialSite;
    }
    public String getBuymaLink() {
        return this.buymaLink;
    }
    
    public void setBuymaLink(String buymaLink) {
        this.buymaLink = buymaLink;
    }
    public String getIntroduction() {
        return this.introduction;
    }
    
    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }




}


