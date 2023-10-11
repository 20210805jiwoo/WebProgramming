package pr33;

public class LoginBean {
	private String id;
	private String pw;
	private String email;
	private int gender;
	private String birth;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public boolean isGrownUp() {
		String[] dArray = birth.split("-");
		String darr = dArray[0];
		int age = Integer.parseInt(darr);
		if (age <= 2003) {
			return true;
		} else
			return false;
	}
}
