package model.entites;

public class User {

	private int id;
	private String title;
	private String firstname;
	private String lastname;
	private String emailaddr;
	private String login;
	private String password;
	
	public User(int user_id, String user_title, String user_firstname, String user_lastname, String user_emailaddr,
			String user_login, String user_password) {
		
		this.id = user_id;
		this.title = user_title;
		this.firstname = user_firstname;
		this.lastname = user_lastname;
		this.emailaddr = user_emailaddr;
		this.login = user_login;
		this.password = user_password;
	}
	public User() {
	
	}
	public int getUser_id() {
		return id;
	}
	public void setUser_id(int user_id) {
		this.id = user_id;
	}
	public String getUser_firstname() {
		return firstname;
	}
	public void setUser_firstname(String user_firstname) {
		this.firstname = user_firstname;
	}
	public String getUser_lastname() {
		return lastname;
	}
	public void setUser_lastname(String user_lastname) {
		this.lastname = user_lastname;
	}
	public String getUser_emailaddr() {
		return emailaddr;
	}
	public void setUser_emailaddr(String user_emailaddr) {
		this.emailaddr = user_emailaddr;
	}
	public String getUser_login() {
		return login;
	}
	public void setUser_login(String user_login) {
		this.login = user_login;
	}
	public String getUser_password() {
		return password;
	}
	public void setUser_password(String user_password) {
		this.password = user_password;
	}
	public String getUser_title() {
		return title;
	}
	public void setUser_title(String user_title) {
		this.title = user_title;
	}

	
}