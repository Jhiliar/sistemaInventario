
package Programas;

import Modelo.cargo;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class CRUD_cargo extends Conexion{
  Conexion cone = new Conexion();  
  public List<cargo> listarCargos() throws Exception {
        List<cargo> cargos;
        cargo car;
        ResultSet rs = null;
        String sql = "SELECT IDCARGO, NOMBRECARGO, ESTADO FROM CARGO ORDER BY IDCARGO";
        try {
            this.conectar(false);
            rs = this.ejecutarOrdenDatos(sql);
            cargos = new ArrayList<>();
            while (rs.next() == true) {
                car = new cargo();
                car.setCodigo(rs.getInt("IDCARGO"));
                car.setNombreCargo(rs.getString("NOMBRECARGO"));
                car.setEstado(rs.getBoolean("ESTADO"));
                cargos.add(car);
            }
            this.cerrar(true);
        } catch (Exception e) {
            throw e;
        } finally {
        }
        return cargos;
    }  
}
