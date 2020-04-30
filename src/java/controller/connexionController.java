/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.sql.*;


/**
 *
 * @author sonia
 */
public class connexionController {
    // 
     private Connection conn = null;
   // statement pour exécuter la requete
     private Statement  smt  = null;
 
    static {
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    
    // 
     public connexionController() {
        try {
            
                conn = DriverManager.getConnection("jdbc:mysql://localhost/leoni?autoReconnect=true&useSSL=false", "root", "admin");
        
         
            smt = conn.createStatement();
        } catch (SQLException e) {
           System.err.print("erreeer connexion"+e.toString());
        }
 
    }
    // vérifier connexion
   public Connection getConnection(){
        return this.conn;
    }
   
   
   public ResultSet executeSelect(String query) {
        try {
            return smt.executeQuery(query);
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
    }
    }
   
   
     public boolean executeInsert(String query) {
        try {
            return smt.execute(query);
        } catch (SQLException e) {
            System.err.println(query);
            e.printStackTrace();
            return false;
        }
    }
     
        public int executeUpdate(String query) {
        try {
            return smt.executeUpdate(query);
        } catch (SQLException e) {
    e.printStackTrace();
            System.err.println(e.getSQLState());
            System.err.println(e.getMessage());
            return -1;
        }
    }
}
