/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author GearVn
 */
public class DBContext {
    private Connection con;
    private String HOST="localhost";
    private int PORT = 1433;    
    private String DBName= "Photographer";
    private String serverName ="";
    
    public Connection getConnection() throws ClassNotFoundException, SQLException{
        String url="jdbc:sqlserver://"+ HOST + ":" + PORT + ";databaseName=" + DBName;
        //+";integatedSecurity=true"
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");        
        con = DriverManager.getConnection(url,"sa","*TienViet3353");
        return con;
    }

    public void closeCon(Connection con){
        if(con != null){
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
    public void closePS(PreparedStatement ps){
        if(ps != null){
            try {
                ps.close();
            } catch (SQLException ex) {
                Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
    public void closeRS(ResultSet rs){
        if(rs != null){
            try {
                rs.close();
            } catch (SQLException ex) {
                Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
}
