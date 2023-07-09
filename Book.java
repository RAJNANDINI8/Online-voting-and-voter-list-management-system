package net.codejava;

public class Book {
	 private int candidate_id;
    private String candidate_name;
    private String father_name;
    private String DOB;
     
    private String partyname;
    
    private String GENDER;
    private String POSITION;
    private String EMAILID;
     
    private String PASSWD;
    private long PHONENO;
    private String ADDRESS;
    private byte[] image;  
 
   
    public byte[] getImage() {
        return this.image;
    }
 
    private String base64Image;
     
    
    public String getBase64Image() {
        return base64Image;
    }
 
    public void setBase64Image(String base64Image) {
        this.base64Image = base64Image;
    }
 
   
    public String getcandidate_name() {
        return candidate_name;
    }
 
    public void setcandidate_name(String candidate_name) {
        this.candidate_name = candidate_name;
    }
    public String getfather_name() {
        return father_name;
    }
    
    public void setcandidate_id(int candidate_id) {
        this.candidate_id = candidate_id;
    }
    public int  getcandidate_id() {
        return candidate_id;
    }
    
 
    public void setfather_name(String father_name ) {
        this.father_name = father_name;
    }
    public String getpartyname() {
        return partyname;
    }

    public void setpartyname(String partyname) {
        this.partyname = partyname;
    }
    
    public String getDOB() {
        return DOB;
    }

    public void setDOB(String DOB) {
        this.DOB = DOB;
    }
    public String getGENDER() {
        return GENDER;
    }

    public void setGENDER(String GENDER) {
        this.GENDER = GENDER;
    }
    public String getPOSITION() {
        return POSITION;
    }

    public void setPOSITION(String POSITION) {
        this.POSITION = POSITION;
    }
    public String getEMAILID() {
        return EMAILID;
    }

    public void setEMAILID(String EMAILID) {
        this.EMAILID = EMAILID;
    }
    public String getPASSWD() {
        return PASSWD;
    }

    public void setPASSWD(String PASSWD) {
        this.PASSWD = PASSWD;
    }
    
    public long getPHONENO() {
        return PHONENO;
    }

    public void setPHONENO(long PHONENO) {
        this.PHONENO = PHONENO;
    }
    
    public String getADDRESS() {
        return ADDRESS;
    }

    public void setADDRESS(String ADDRESS) {
        this.ADDRESS = ADDRESS;
    }

}

