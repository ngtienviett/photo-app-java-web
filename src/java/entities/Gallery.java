/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

/**
 *
 * @author GearVn
 */
public class Gallery {
    private int galleryID;
    private String galleryName,img,galleryDesc;

    public Gallery() {
    }

    public Gallery(int galleryID, String galleryName, String img, String galleryDesc) {
        this.galleryID = galleryID;
        this.galleryName = galleryName;
        this.img = img;
        this.galleryDesc = galleryDesc;
    }

    public int getGalleryID() {
        return galleryID;
    }

    public void setGalleryID(int galleryID) {
        this.galleryID = galleryID;
    }

    public String getGalleryName() {
        return galleryName;
    }

    public void setGalleryName(String galleryName) {
        this.galleryName = galleryName;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getGalleryDesc() {
        return galleryDesc;
    }

    public void setGalleryDesc(String galleryDesc) {
        this.galleryDesc = galleryDesc;
    }
    
}
