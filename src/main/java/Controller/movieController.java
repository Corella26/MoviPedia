
package Controller;

import DataBase.Conexion;
import Model.movie;
import com.mysql.cj.protocol.Resultset;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author jcorellac
 */
public class movieController {
    
    public static movie findMovieById(int id){
        movie m = new movie();
        try {
            Connection con = new Conexion().getConnection();
            String qwery = "select * from  movie where movie_id =?";
            PreparedStatement ps = con.prepareStatement(qwery);
            ps.setInt(1, id);
            
            ResultSet rs = ps.executeQuery();
            
            if (rs.next()) {
                m.setMovie_id(rs.getInt(1));
                m.setTitle(rs.getString(2));
                m.setBudget(rs.getInt(3));
                m.setHomepage(rs.getString(4));
                m.setOverview(rs.getString(5));
                m.setPopularity(rs.getInt(6));
                m.setRelease_date(rs.getDate(7));
                m.setRevenue(rs.getInt(8));
                m.setRuntime(rs.getInt(9));
                m.setMovie_status(rs.getString(10));
                m.setTagline(rs.getString(11));
                m.setVote_average(rs.getInt(12));
                m.setVote_count(rs.getInt(13));
            }
            System.out.println("Busqueda exitosa!!!");
            con.close();
            
        } catch (Exception e) {
            System.out.println("Error al buscar!!!");
            System.out.println(e.getMessage());
        } 
        return m;
    
    }
    
    public static List<movie> findMovies (){
        List<movie> list = new ArrayList<>();
        try {
            Connection con = new Conexion().getConnection();
            String qwery = "select * from movie order by movie_id asc";
            PreparedStatement ps = con.prepareStatement(qwery);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {                
                movie m = new movie();
                m.setMovie_id(rs.getInt(1));
                m.setTitle(rs.getString(2));
                m.setBudget(rs.getInt(3));
                m.setHomepage(rs.getString(4));
                m.setOverview(rs.getString(5));
                m.setPopularity(rs.getInt(6));
                m.setRelease_date(rs.getDate(7));
                m.setRevenue(rs.getInt(8));
                m.setRuntime(rs.getInt(9));
                m.setMovie_status(rs.getString(10));
                m.setTagline(rs.getString(11));
                m.setVote_average(rs.getInt(12));
                m.setVote_count(rs.getInt(13));
                list.add(m);
            }
            System.out.println("Busqueda exitosa!!!");
            con.close();
        } catch (SQLException ed) {
            System.out.println("Error al buscar!!!");
            System.out.println(ed.getMessage());
        }
        return list;
    }
    
    
}
