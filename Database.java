import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Database
{
    Connection con;
    Statement st;
    String strConexao = "jdbc:mysql://localhost:3306/"; // + Nome do Banco = JogoExp

    Database(String nomeDB) throws Exception{
        String url = this.strConexao + nomeDB;
        this.con = conectarDB(url, "root", "root");
        this.st = con.createStatement();  
    }

    /**
     * Method conectarDB
     *
     * @param url - string de conexao
     * @param nomeDB - nome do banco de dados 
     * @param user - usuario do banco de dados
     * @param password - senha do usuario
     * @return The return value
     */
    private Connection conectarDB(String url, String user, String password) throws Exception {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            return DriverManager.getConnection(url,user, password);
        }
        catch(Exception e) {
            throw new Exception(e.getMessage());
        }       
    }

    public void gravarDadosDB(String ra, String nome, int idade)  throws Exception {
        try{
            String SQL = "INSERT INTO alunos (ra, nome, idade) " + "VALUES ('"+ ra + "','"+ nome + "'," + idade + ")";
            st.execute(SQL);
        }catch(Exception e) {
            throw new Exception(e.getMessage());
        }          
    }
}