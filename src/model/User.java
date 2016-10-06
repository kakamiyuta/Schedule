package model;

import java.sql.Date;

public class User {
	private String userID;
	private String password;
	private String lastName;
	private String firstName;
	private String lastNameKana;
	private String firstNameKana;
	private Date birthday;
	private int sex;
	private String mailAddress;

	public String getUserID(){
		return userID;
	}

	public void setUserID(String userID){
		this.userID = userID;
	}

	public String getPassword(){
		return password;
	}

	public void setPassword(String password){
		this.password = password;
	}

	public String getLastName(){
		return lastName;
	}

	public void setLastName(String lastName){
		this.lastName = lastName;
	}

	public String getFirstName(){
		return firstName;
	}

	public void setFirstName(String firstName){
		this.firstName = firstName;
	}

	public String getLastNameKana(){
		return lastNameKana;
	}

	public void setLastNameKana(String lastNameKana){
		this.lastNameKana = lastNameKana;
	}

	public String getFirstNameKana(){
		return firstNameKana;
	}

	public void setFirstNameKana(String firstNameKana){
		this.firstNameKana = firstNameKana;
	}

	public Date getBirthday(){
		return birthday;
	}

	public void setBirthday(Date birthday){
		this.birthday = birthday;
	}

	public int getSex(){
		return sex;
	}

	public void setSex(int sex){
		this.sex = sex;
	}

	public String getMailAddress(){
		return mailAddress;
	}

	public void setMailAddress(String mailAddress){
		this.mailAddress = mailAddress;
	}
}
