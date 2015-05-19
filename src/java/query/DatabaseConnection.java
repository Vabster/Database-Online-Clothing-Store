package query;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Class used to connect to the database
 * @author Dillon
 */
public class DatabaseConnection 
{
    Connection conn;
    Statement stmt;
    ResultSet res;
    
    public DatabaseConnection()
    {
        
    }
    
    /**
     * Connects to the mysql database with username root and no password
     * @return 
     */
    public Connection setConnection()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/sampledb", "root", "");
        }
        catch(Exception e)
        {}
        
        return conn;            
    }
       
    /**
     * Returns the results produced by the query
     * @param sql
     * @param conn
     * @return 
     */
    public ResultSet getResult(String sql, Connection conn)
    {
        this.conn = conn;
        try
        {
            stmt = conn.createStatement();
            res = stmt.executeQuery(sql);
        }
        catch(Exception e)
        {}
        return res;
    }
            
}
