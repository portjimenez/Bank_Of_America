/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CuentaMonetaria;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author Administrador_JP
 */
public class ConexionDB {
   public void Conexion(){
       Connection connection = null;
       try {
            // Cargar el controlador JDBC
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establecer la conexión
            String url = "jdbc:mysql://localhost:3306/boa";
            String user = "root";
            String password = "4dMindb&";
            connection = DriverManager.getConnection(url, user, password);

            System.out.println("Conexión exitosa");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } finally {
            // Cerrar la conexión en el bloque finally
            try {
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
       }
   } 
}
