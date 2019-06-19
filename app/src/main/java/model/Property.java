package model;

/**
 * Created by wolfsoft4 on 22/1/18.
 */

public class Property {

    private String name,address,tripurl,descr,price;
    private double lat , len;
    private String image;
    private float stars;
    public Property(String name ,Float stars ,String tripurl ,String descr,String address, String price, String image , double lat,double len) {

        this.name = name;
        this.stars = stars;
        this.tripurl = tripurl;
        this.descr = descr;
        this.address = address;
        this.price = price;
        this.image = image;
        this.lat = lat;
        this.len = len;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Float getStars() {
        return stars;
    }

    public void setStars(Float stars) {
        this.stars = stars;
    }

    public String getTripurl() {
        return tripurl;
    }

    public void setTripurl(String tripurl) {
        this.tripurl = tripurl;
    }

    public String getDescr() {
        return descr;
    }

    public void setDescr(String descr) {
        this.descr = descr;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public double getLat() {
        return lat;
    }

    public void setLat(double lat) {
        this.lat = lat;
    }

    public double getLen() {
        return len;
    }

    public void setLen(double len) {
        this.len = len;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }


}
