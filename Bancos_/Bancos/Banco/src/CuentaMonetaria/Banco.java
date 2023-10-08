/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package CuentaMonetaria;

/**
 *
 * @author Bryan
 */
public class Banco {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        ConexionDB conn = new ConexionDB();
        conn.Conexion();
            java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new FrmLogin().setVisible(true);
                   
            }
        });
        // TODO code application logic here
    }
    
}
