/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CuentaMonetaria;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Administrador_JP
 */
public class DBConexion {
    public static Connection getConexion(){
        
        String conexionUrl = "jdbc:sqlserver://localhost:1433;"
                + "database=BOA;"
                + "user=sa;"
                + "password=L0bo20%&;"
                + "loginTimeout=30;"
                + "TrustServerCertificate=True;";
        try{
            Connection con = (Connection) DriverManager.getConnection(conexionUrl);
            System.out.println("conexion exitosa ");
            return con;
        }catch(Exception ex){
            System.out.println(ex.toString());
            return null;
        }
        
        
    }
}
