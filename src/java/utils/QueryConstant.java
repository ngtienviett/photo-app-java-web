/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

/**
 *
 * @author GearVn
 */
public class QueryConstant {
    public static final String QUERY_GET_CONTACT = "SELECT * FROM Contact";
    public static final String QUERY_GET_PERSON_INFO = "SELECT * FROM Personal";
    public static final String QUERY_GET_ALL_GALLERY = "SELECT * FROM Gallery";
    public static final String QUERY_GET_ALL_GALLERY_IMG_BY_ID = "SELECT * FROM GalleryImg where GalleryID = ?";
}
