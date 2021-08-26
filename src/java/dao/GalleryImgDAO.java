/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entities.GalleryImg;
import java.util.ArrayList;

/**
 *
 * @author GearVn
 */
public interface GalleryImgDAO {
    public ArrayList<GalleryImg> getImgByGalleryID(int id);
}
