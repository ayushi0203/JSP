
package user;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserBean extends Object implements Serializable {
    String useridmsg="User Name entered is : ";
    String passwordmsg="Password entered is : ";
    String emailmsg="Your email id is : ";
    
    public UserBean() {
        
    }
      /* private String password;
    
       public String getPassword() {
         return ("<b>" + passwordmsg + "</b> " + this.password);
    }
    
        public void setPassword(String password) {
        
        this.password = password;
    }
   */ 
     private String email;
    
      public String getEmail() {
        return ("<b>" + emailmsg + "</b> " + this.email);
    }
    
       public void setEmail(String email) {
        
        this.email = email;
    }
    
   
    private String username;
    
        public String getUsername() {
        return ("<b>" + useridmsg + "</b> " + this.username);
    }
    
    
    public void setUsername(String username) {
        
        this.username = username;
        
    }
    
    public void getEmailid() {
        try {
        	Class.forName("com.mysql.jdbc.Driver");  

        	Connection con=DriverManager.getConnection("jdbc:MySql://localhost:3307/mysqljdbc","root","life24*7");  
            PreparedStatement s=con.prepareStatement("select email from candidates where first_name=? ");
            s.setString(1,username);
            //s.setString(2,password);
            ResultSet rs=s.executeQuery();
            while(rs.next()) {
                String str=rs.getString(1);
                setEmail(str);
                System.out.println(str);
            }
        } catch(Exception e) {
            System.out.println(e);
        }
    }
}
