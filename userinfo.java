package emailverification;


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
	
	
	public void setCode(String code) {
		this.code = code;
	}

	public static Object getCode() {
		// TODO Auto-generated method stub
		return code;
	}

	
  
  

	   
	   
	   
  
  
   
}