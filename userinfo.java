package candidateverification;



public class userinfo {
   String name;
   static String email;
   static String code;
   
   public userinfo() {
	   
   }
   
  public userinfo(String name,String email,String code) {
	   this.name=name;
	   this.email=email;
	   this.code=code;
	   
  }

	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public static  String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public static String getCode() {
		return code;
	}
	
	public void setCode(String code) {
		this.code = code;
	}
	  
  
  

	   
	   
	   
  
  
   
}