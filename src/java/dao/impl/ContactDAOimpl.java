/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.impl;

import dao.ContactDAO;
import entities.Contact;
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
public class ContactDAOimpl implements ContactDAO{

    private final DBContext dbContext = new DBContext();
    
    @Override
    public ArrayList<Contact> getContact() {
        Connection connection = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        ArrayList<Contact> list = new ArrayList<>();
        try{
            connection = dbContext.getConnection();
            ps = connection.prepareStatement(QueryConstant.QUERY_GET_CONTACT);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Contact(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5)));
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
        ContactDAO contactDAO = new ContactDAOimpl();
        System.out.println(contactDAO.getContact().get(0).getAddress());
    }
}
