/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.impl;

import dao.GalleryImgDAO;
import entities.Gallery;
import entities.GalleryImg;
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
public class GalleryImgDAOimpl implements GalleryImgDAO{
    private final DBContext dbContext = new DBContext();
    @Override
    public ArrayList<GalleryImg> getImgByGalleryID(int id) {
        Connection connection = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        ArrayList<GalleryImg> list = new ArrayList<>();
        try{
            connection = dbContext.getConnection();
            ps = connection.prepareStatement(QueryConstant.QUERY_GET_ALL_GALLERY_IMG_BY_ID);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new GalleryImg(rs.getInt(1), rs.getString(2)));
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
        GalleryImgDAO galleryImgDAO = new GalleryImgDAOimpl();
        System.out.println(galleryImgDAO.getImgByGalleryID(3).size());
    }
}
