package net.codejava;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Base64;
 
public class BookDAO {
	static final String DB_URL ="jdbc:mysql://localhost/Online_Voting_System?useSSL=false";
	static final String USER = "root";
	static final String PASS="Parbhani@123";
     
    public Book get(int id) throws SQLException, IOException, ClassNotFoundException {
        Book book = null;
        Class.forName("com.mysql.jdbc.Driver");
        String sql = "SELECT * FROM candidate WHERE Candidate_Id = ?";
         
        try (Connection connection = DriverManager.getConnection(DB_URL, USER, PASS)) {
        	
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet result = statement.executeQuery();
             
            while (result.next()) {
                book = new Book();
                int candidate_id=result.getInt("candidate_id");
                String candidate_name = result.getString("candidate_name");
                String father_name = result.getString("father_name");
                String partyname = result.getString("partyname");
                String DOB = result.getString("DOB");
                String GENDER = result.getString("GENDER");
                String POSITION = result.getString("POSITION");
                String EMAILID = result.getString("EMAILID");
                String PASSWD = result.getString("PASSWD");
                String ADDRESS = result.getString("ADDRESS");
                long PHONENO = result.getLong("PHONENO");
                Blob blob = result.getBlob("image");
                 
                InputStream inputStream = blob.getBinaryStream();
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                byte[] buffer = new byte[4096];
                int bytesRead = -1;
                 
                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    outputStream.write(buffer, 0, bytesRead);                  
                }
                 
                byte[] imageBytes = outputStream.toByteArray();
                String base64Image = Base64.getEncoder().encodeToString(imageBytes);
                 
                 
                inputStream.close();
                outputStream.close();
                 
                book.setcandidate_id(candidate_id);
                book.setcandidate_name(candidate_name);
                book.setfather_name(father_name);
                book.setpartyname(partyname);
                book.setDOB(DOB);
                book.setGENDER(GENDER);
                book.setPOSITION(POSITION);
                book.setEMAILID(EMAILID);
                book.setPASSWD(PASSWD);
                book.setADDRESS(ADDRESS);
                book.setPHONENO(PHONENO);
                book.setBase64Image(base64Image);
            }          
             
        } catch (SQLException | IOException ex) {
            ex.printStackTrace();
            throw ex;
        }      
         
        return book;
    }
}