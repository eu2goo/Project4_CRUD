package com.crud.common;

import java.sql.Connection;
import java.sql.DriverManager;

import static java.lang.Class.forName;

public class JDBCUtil  {
    public static Connection getConnection(){
        Connection con= null;
        try{
            forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://walab.handong.edu:3306/p232_22200296","p232_22200296","pees9E");

        } catch (Exception e) {
        System.out.println(e);
        }
        return con;
    }

}
