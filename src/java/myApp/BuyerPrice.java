package myApp;
// Generated 25-Jun-2021 10:28:37 by Hibernate Tools 4.3.1



/**
 * BuyerPrice generated by hbm2java
 */
public class BuyerPrice  implements java.io.Serializable {


     private Integer id;
     private Integer itemId;
     private String buyer;
     private Double price;
     private String url;
     private String comment;

    public BuyerPrice() {
    }

    public BuyerPrice(Integer itemId, String buyer, Double price, String url, String comment) {
       this.itemId = itemId;
       this.buyer = buyer;
       this.price = price;
       this.url = url;
       this.comment = comment;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Integer getItemId() {
        return this.itemId;
    }
    
    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }
    public String getBuyer() {
        return this.buyer;
    }
    
    public void setBuyer(String buyer) {
        this.buyer = buyer;
    }
    public Double getPrice() {
        return this.price;
    }
    
    public void setPrice(Double price) {
        this.price = price;
    }
    public String getUrl() {
        return this.url;
    }
    
    public void setUrl(String url) {
        this.url = url;
    }
    public String getComment() {
        return this.comment;
    }
    
    public void setComment(String comment) {
        this.comment = comment;
    }




}


