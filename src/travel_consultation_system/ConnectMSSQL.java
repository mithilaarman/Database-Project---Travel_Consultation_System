/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travel_consultation_system;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JOptionPane;
import java.sql.*;

/**
 *
 * @author User
 */
public class ConnectMSSQL {
    Connection conn = null;
    //Connection connection;
    //Statement ST;
            
    public static Connection ConnectDB()
    {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection conn = DriverManager.getConnection(
                    "jdbc:sqlserver://localhost:1433;databaseName=Travel Colsultation System;selectMethod=cursor", "sa", "123456");
            //JOptionPane.showMessageDialog(null, "Conneced to Database");
            return conn;

           // System.out.println("DATABASE NAME IS:" + connection.getMetaData().getDatabaseProductName());

            //ST = connection.createStatement();
            //JOptionPane.showMessageDialog(null, "Connected");
            
           // ResultSet resultSet = statement
               //     .executeQuery("SELECT Emp_ID FROM EMPLOYEE");
            
            
           // while (resultSet.next()) {
                
              //  System.out.println("Customer NAME:" + 
                   //     resultSet.getString("FirstName"));
                
            //}
            
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
            //e.printStackTrace();
            //System.out.println(e);
        }return null;
    }
    
    //public static void main(String[] args) 
    //{
        //ConnectMSSQL cnObj = new ConnectMSSQL();
       // cnObj.connectDB();
    //}
    
}
