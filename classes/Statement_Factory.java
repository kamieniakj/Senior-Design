import java.sql.*;

public class Statement_Factory {

    public Statement get_statement()
    throws SQLException, InstantiationException, ClassNotFoundException, IllegalAccessException
    {

        String connectionURL = "jdbc:mysql://localhost:3306/test";
        Connection connection = null;
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        connection = DriverManager.getConnection(connectionURL, "root", "");
        Statement st = connection.createStatement();   
        return st;

    }    

}//end class 
