/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.impl;

import dao.PersonDAO;
import entities.Person;
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
public class PersonDAOimpl implements PersonDAO{
    private final DBContext dBContext = new DBContext();
    
    @Override
    public ArrayList<Person> getPersonInfo() {
        Connection connection = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        ArrayList<Person> list = new ArrayList<>();
        try{
            connection = dBContext.getConnection();
            ps = connection.prepareStatement(QueryConstant.QUERY_GET_PERSON_INFO);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Person(rs.getString(1), rs.getString(2), rs.getString(3)));
            }
        }catch(ClassNotFoundException | SQLException e){
            System.out.println(e);
        }finally{
            dBContext.closeRS(rs);
            dBContext.closePS(ps);
            dBContext.closeCon(connection);
        }   
        return list;
    }
    
    public static void main(String[] args) {
        PersonDAO personDAO = new PersonDAOimpl();
        System.out.println(personDAO.getPersonInfo().get(0).getImg());
    }
}
