package com.util;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * @author lrk
 */
public class DbUtil {
    public Connection getCon() throws Exception {
        Connection con = null;
        String driverName = "com.mysql.cj.jdbc.Driver";
        String userName ="root";
        String userPwd = "123456";
        String dbName = "db_dorm";
        String url1 = "jdbc:mysql://localhost:3306/"+dbName;
        String url2 = "?useSSL=false&serverTimezone=UTC";
        String url3 = "&userUnicode=true&characterEncoding=UTF-8";
        String url = url1+url2+url3;
        Class.forName(driverName);
        con = DriverManager.getConnection(url,userName,userPwd);
        return con;
    }

    public void closeCon(Connection con) throws Exception {
        if(con!=null) {
            con.close();
        }
    }

    public static void main(String[] args) {
        DbUtil dbUtil = new DbUtil();
        try {
            dbUtil.getCon();
        } catch (Exception e) {
            System.out.println("no");
            e.printStackTrace();
        }
    }
}
