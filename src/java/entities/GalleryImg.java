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
public class GalleryImg {
    private int galleyID;
    private String img;

    public GalleryImg() {
    }

    public GalleryImg(int galleyID, String img) {
        this.galleyID = galleyID;
        this.img = img;
    }

    public int getGalleyID() {
        return galleyID;
    }

    public void setGalleyID(int galleyID) {
        this.galleyID = galleyID;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
    
}
