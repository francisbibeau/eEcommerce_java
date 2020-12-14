package model.managers;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.entites.User;
import service.DBConnexion;

public class ManagerUser {
	public static final String queryAddUser = "insert into users (user_login, user_password, user_title, user_firstname, user_lastname, user_emailaddr) values ( ?, ?, ?, ?, ?,?);";
	public static final String queryCheckUser = "select * from users where user_login like ?;";

	public static boolean addUser(User userToAdd) {
		PreparedStatement ps = DBConnexion.getPs(queryAddUser);
		boolean reussi = false;
		try {
			ps.setString(1, userToAdd.getUser_login());
			ps.setString(2, userToAdd.getUser_password());
			ps.setString(3, userToAdd.getUser_title());
			ps.setString(4, userToAdd.getUser_firstname());
			ps.setString(5, userToAdd.getUser_lastname());
			ps.setString(6, userToAdd.getUser_emailaddr());
			int execution = ps.executeUpdate();
			if (execution > 0) {

				reussi = true;
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}
		DBConnexion.close();
		return reussi;

	}

	public static User checkUser(User userToTest) {
		PreparedStatement ps = DBConnexion.getPs(queryCheckUser);
		User userTemp = null;
		try {
			ps.setString(1, userToTest.getUser_login());
			ResultSet result = ps.executeQuery();
			if (result.next() == true) {
				if (result.getString("user_password").equals(userToTest.getUser_password())) {
					userTemp = new User(result.getInt("user_id"), result.getString("user_title"),
							result.getString("user_firstname"), result.getString("user_lastname"),
							result.getString("user_emailaddr"), result.getString("user_login"), null);
				}
			}

		} catch (SQLException e) {

		}
		DBConnexion.close();
		return userTemp;
	}
}