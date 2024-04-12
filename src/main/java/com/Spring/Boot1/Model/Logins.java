package com.Spring.Boot1.Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Logins implements Credentials {
    
    public String trainee_login(String email, String password) {
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet rs=null;
        String res="";
        try {
            connection = DriverManager.getConnection(JDBC_URL, JDBC_USERNAME, JDBC_PASSWORD);
            
            // Prepare SQL statement for inserting user data
            String sql = "select * from trainee where trainee_username = '"+ email +"' and trainee_password = '"+ password +"'";
            statement = connection.prepareStatement(sql);
            rs=statement.executeQuery();
            System.out.println("line 23");
            while(rs.next())
            {
            	res += (String)rs.getString("trainee_username");
            	res += (String)rs.getString("trainee_password");
            }
            System.out.println(res);
            System.out.println("line 29");
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("line 32");
            return res;
        } finally {
            // Close resources
            try {
                if (statement != null) statement.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        System.out.println("line 43");
        return res;
    }
    
    
}
