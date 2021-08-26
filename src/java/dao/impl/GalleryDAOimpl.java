/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.impl;

import dao.GalleryDAO;
import entities.Contact;
import entities.Gallery;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import utils.QueryConstant;

/**
 *
 * @author GearVn
 */
public class GalleryDAOimpl implements GalleryDAO{
    private final DBContext dbContext = new DBContext();
    @Override
    public ArrayList<Gallery> getAllGallery() {
        
        Connection connection = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        ArrayList<Gallery> list = new ArrayList<>();
        try{
            connection = dbContext.getConnection();
            ps = connection.prepareStatement(QueryConstant.QUERY_GET_ALL_GALLERY);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Gallery(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4)));
            }
        }catch(ClassNotFoundException | SQLException e){
            System.out.println(e);
        }finally{
            dbContext.closeRS(rs);
            dbContext.closePS(ps);
            dbContext.closeCon(connection);
        }   
        return list;
    }
    public static void main(String[] args) {
        GalleryDAO galleryDAO = new GalleryDAOimpl();
        System.out.println(galleryDAO.getAllGallery().get(0).getGalleryName());
    }
}
