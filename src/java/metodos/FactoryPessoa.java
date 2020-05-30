/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package metodos;

import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Pessoa;

public class FactoryPessoa extends Factory{
    
    @Override
    public  Object newElement() {
        return new Pessoa();
    }

    @Override
    public  Object read(Object primaryKey){
       Pessoa c;
       // Criar um Pessoa
       c = (Pessoa) this.newElement();
       String query = "SELECT * FROM pessoa WHERE idessoa = ?";
      try {
        Connection conn = Conexao.getInstance();
        PreparedStatement pt = conn.prepareStatement(query);
        pt.setString(1,(String) primaryKey);
        ResultSet rs = pt.executeQuery();
        if (rs.next()){
                //Inizializar um Pessoa
                c.setIdPessoa(rs.getInt("idPessoa"));
                c.setNome(rs.getString("nome"));
                c.setApelido(rs.getString("apelido"));
                c.setSexo(rs.getString("sexo"));
                c.setDataNascimento(rs.getString("dataNascimento"));
                c.setProvinciaNascimento(rs.getString("provinciaNascimento"));
                c.setCidadeNascimento(rs.getString("cidadeNascimento"));
                c.setEndereco(rs.getString("endereco"));
                c.setTelefone(rs.getString("telefone"));
             }
             pt.close();
             conn.close();
        }catch(Exception ex) {
            Logger.getLogger(this.getClass().getName()).log(Level.SEVERE,ex.toString(),ex);
        }
       return c;
    }

    @Override
    public  int delete(Object primaryKey){
       int ris = 0;
       String query = "DELETE FROM pessoa WHERE idPessoa = ?";
       try {
            Connection conn = Conexao.getInstance();
            PreparedStatement pt = conn.prepareStatement(query);
            pt.setString(1,(String) primaryKey);
            ris = pt.executeUpdate();
            pt.close();
            conn.close();
        }catch(Exception ex) {
            Logger.getLogger(this.getClass().getName()).log(Level.SEVERE,ex.toString(),ex);
        }
       return ris;
    }

    @Override
    public int update(Object o){
        int ris = 0;
        try {
            Connection conn = Conexao.getInstance();
            String sqlInsert = "UPDATE pessoa SET"
                    + " idPessoa =?, nome = ?, apelido = ?,"
                    + " sexo = ?, dataNascimento = ?, provinciaNascimento = ?,"
                    + " cidadeNascimento = ?, endereco = ?, telefone = ?"
                    + " WHERE idPessoa = ?";
            PreparedStatement pt = conn.prepareStatement(sqlInsert);
            pt.setInt(1,((Pessoa) o).getIdPessoa());
            pt.setString(2,((Pessoa) o).getNome());
            pt.setString(3,((Pessoa) o).getApelido());
            pt.setString(4,((Pessoa) o).getSexo());
            pt.setString(5,((Pessoa) o).getDataNascimento());
            pt.setString(6,((Pessoa) o).getProvinciaNascimento());
            pt.setString(7,((Pessoa) o).getCidadeNascimento());
            pt.setString(8,((Pessoa) o).getEndereco());
            pt.setString(9,((Pessoa) o).getTelefone());
            pt.setInt(10,((Pessoa) o).getIdPessoa());
            
            ris = pt.executeUpdate();
            pt.close();
            conn.close();
        } catch (Exception ex) {
            Logger.getLogger(this.getClass().getName()).log(Level.SEVERE,ex.toString(),ex);
        }

        //Se insert OK return object se nao null
        return ris;
    }


    @Override
    public Object insert(Object o){
        boolean ris = false;
        try {
            Connection conn = Conexao.getInstance();
            String sqlInsert = "INSERT INTO pessoa VALUES(null,?,?,?,?,?,?,?,?)";
            PreparedStatement pt = conn.prepareStatement(sqlInsert);
           // pt.setString(1,((Pessoa) o).getIdpessoa());
            pt.setString(1,((Pessoa) o).getNome());
            pt.setString(2,((Pessoa) o).getApelido());
            pt.setString(3,((Pessoa) o).getSexo());
            pt.setString(4,((Pessoa) o).getDataNascimento());
            pt.setString(5,((Pessoa) o).getProvinciaNascimento());
            pt.setString(6,((Pessoa) o).getCidadeNascimento());
            pt.setString(7,((Pessoa) o).getEndereco());
            pt.setString(8,((Pessoa) o).getTelefone());

            ris = pt.execute();
            pt.close();
            conn.close();

            ris = pt.execute();
            pt.close();
            conn.close();
        } catch (Exception ex) {
            Logger.getLogger(this.getClass().getName()).log(Level.SEVERE,ex.toString(),ex);
        }

        //Se insert OK return object se nao null
        if (ris) {
        return o;
        }
        return null;
    }

    @Override
    public java.util.ArrayList<Object> selectAll() {
        String query = "SELECT * FROM pessoa";
        Pessoa c;
        ArrayList pessoas = new ArrayList<Pessoa>();
        try {
             Connection conn = Conexao.getInstance();
             Statement st = conn.createStatement();
             ResultSet rs = st.executeQuery(query);
             while(rs.next()){
                // Criar um Pessoa
                c = (Pessoa) this.newElement();

                //Inizializar um Pessoa
                c.setIdPessoa(rs.getInt("idPessoa"));
                c.setNome(rs.getString("nome"));
                c.setApelido(rs.getString("apelido"));
                c.setSexo(rs.getString("sexo"));
                c.setDataNascimento(rs.getString("dataNascimento"));
                c.setProvinciaNascimento(rs.getString("provinciaNascimento"));
                c.setCidadeNascimento(rs.getString("cidadeNascimento"));
                c.setEndereco(rs.getString("endereco"));
                c.setTelefone(rs.getString("telefone"));

                //juntar um Pessoa
                pessoas.add(c);
             }
             st.close();
             conn.close();
        }catch(Exception ex) {
            Logger.getLogger(this.getClass().getName()).log(Level.SEVERE,ex.toString(),ex);
        }
        return pessoas;
    }


     public java.util.ArrayList<Object> selectPessoasByNome(String nome) {
        String query = "SELECT * FROM pessoa WHERE nome like ? ";
        Pessoa c;
        ArrayList pessoas = new ArrayList<Pessoa>();
        try {
             Connection conn = Conexao.getInstance();
             PreparedStatement ps = conn.prepareStatement(query);
             ps.setString(1, "%"+nome+"%");
             ResultSet rs = ps.executeQuery();
             while(rs.next()){
                // Criar um Pessoa
                c = (Pessoa) this.newElement();

                //Inizializar um Pessoa
                c.setIdPessoa(rs.getInt("idPessoa"));
                c.setNome(rs.getString("nome"));
                c.setApelido(rs.getString("apelido"));
                c.setSexo(rs.getString("sexo"));
                c.setDataNascimento(rs.getString("dataNascimento"));
                c.setProvinciaNascimento(rs.getString("provinciaNascimento"));
                c.setCidadeNascimento(rs.getString("cidadeNascimento"));
                c.setEndereco(rs.getString("endereco"));
                c.setTelefone(rs.getString("telefone"));

                //juntar um Pessoa
                pessoas.add(c);
             }
             ps.close();
             conn.close();
        }catch(Exception ex) {
            Logger.getLogger(this.getClass().getName()).log(Level.SEVERE,ex.toString(),ex);
        }
        return pessoas;

    }



public java.util.ArrayList<Object> selectPessoasByPrimaryKey(String primaryKey) {
        String query = "SELECT * FROM pessoa WHERE idPessoa = ? ";
        Pessoa c;
        ArrayList pessoas = new ArrayList<Pessoa>();
        try {
             Connection conn = Conexao.getInstance();
             PreparedStatement ps = conn.prepareStatement(query);
             ps.setString(1, primaryKey);
             ResultSet rs = ps.executeQuery();
             while(rs.next()){
                // Criar um produto
                c = (Pessoa) this.newElement();

                //Inizializar um pessoao
                c.setIdPessoa(rs.getInt("idPessoa"));
                c.setNome(rs.getString("nome"));
                c.setApelido(rs.getString("apelido"));
                c.setSexo(rs.getString("sexo"));
                c.setDataNascimento(rs.getString("dataNascimento"));
                c.setProvinciaNascimento(rs.getString("provinciaNascimento"));
                c.setCidadeNascimento(rs.getString("cidadeNascimento"));
                c.setEndereco(rs.getString("endereco"));
                c.setTelefone(rs.getString("telefone"));

                //juntar um pessoa
                pessoas.add(c);
             }
             ps.close();
             conn.close();
        }catch(Exception ex) {
            Logger.getLogger(this.getClass().getName()).log(Level.SEVERE,ex.toString(),ex);
        }
        return pessoas;

}

    
}
