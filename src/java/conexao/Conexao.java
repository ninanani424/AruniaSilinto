package conexao;
import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {

    public static Connection getInstance() throws Exception{
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "aruniaSilinto";
        String userName = "root";
        String password = "12345678";

        Class.forName(driver).newInstance();
        return  DriverManager.getConnection(url+dbName,userName,password);
    }
}
