/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author PC
 */
public class MyConnection implements Serializable{
    public static Connection getConnection(){
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=Booking";
            Connection connection = DriverManager.getConnection(url,"sa", "sa");
            
            return connection;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }catch(SQLException sqlE){
            sqlE.printStackTrace();
        }
            return null;
    }
}
