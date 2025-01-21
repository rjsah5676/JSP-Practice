package com.ict.home;

import java.sql.*;

public class MySqlDbConnection {
    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.out.println(e.getMessage());
        }
    }
    protected Connection conn=null;
    protected PreparedStatement pstmt = null;
    protected ResultSet rs =null;

    String url = "jdbc:mysql://localhost:3306/mydata";
    String username="root";
    String password="tiger1234";

    public MySqlDbConnection() {

    }

    public void getConnection(){
        try {
            conn = DriverManager.getConnection(url,username,password);
        } catch(SQLException e) {
            System.out.println("SQL EX");
        }
    }
    public void setMysqlClose() {
        try{
            if(rs!=null) rs.close();
            if(pstmt!=null) pstmt.close();
            if(conn!=null) conn.close();
        } catch (Exception e) {
            System.out.println("!!");
        }
    }

}
