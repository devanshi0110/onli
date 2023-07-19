/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DBconnection;

import java.sql.*;

public class SQLconnection {
    
    static Connection con;
     public static Connection getconnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vote", "root", "root");
        } catch (Exception e) {
        }
        return con;
    }
    
    
}
