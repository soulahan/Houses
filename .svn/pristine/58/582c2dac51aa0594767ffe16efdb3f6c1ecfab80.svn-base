package dao.impl;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import dao.IUsersDao;
import entity.Users;
import util.DBHelp;


public class UsersDaoImpl implements IUsersDao {

	@Override
	public boolean addUserByUserName(String name,String phone,String passWord,String email) {
		
		QueryRunner qr = new QueryRunner(DBHelp.getDataSource());
		String sql = "insert into users(userName,phone,userPassWord,userEmail) values(?,?,?,?)";
		Object[] obj = {name,phone,passWord,email};
		
		int num = 0;
		try {
			
			num = qr.update(sql,obj);
			if(num>0){
				return true;
			}else{
				
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;

	}

	@Override
	public Users userLoginByName(String name, String passWord) {
		QueryRunner qr = new QueryRunner(DBHelp.getDataSource());
		String sql = "select * from users where userName=? and userPassWord=?";
		Object[] obj = {name,passWord};
		Users user = null;
		
		try {
			user = qr.query(sql,new BeanHandler<Users>(Users.class), obj);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}       
		
		
		
		return user;
	}

	@Override
	public boolean upDateByPhoneAndUserName(String passWord,String userName, String phone) {
		QueryRunner qr = new QueryRunner(DBHelp.getDataSource());
		String sql = "update users set UserPassWord=? where UserName=? and Phone=?";
		Object[] obj = {passWord,userName,phone};
		int num = 0;
		
		try {
			num = qr.update(sql,obj);
			if(num>0){
				return true;
			}else{
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
		
		
	}

}
