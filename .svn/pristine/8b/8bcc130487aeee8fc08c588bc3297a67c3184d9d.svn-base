package service.impl;

import dao.IUsersDao;
import dao.impl.UsersDaoImpl;
import entity.Users;

public class UsersServiceImpl implements service.IUsersService {

	IUsersDao user = new UsersDaoImpl();
	public boolean addUserByUserName(String name,String phone,String passWord,String email) {
		
		return user.addUserByUserName(name, phone, passWord, email);
	}

	@Override
	public Users userLoginByName(String name, String passWord) {
		
		return user.userLoginByName(name, passWord);
	}

	@Override
	public boolean upDateByPhoneAndUserName(String userName, String phone, String passWord) {
		// TODO Auto-generated method stub
		return user.upDateByPhoneAndUserName(userName, phone, passWord);
	}

}
