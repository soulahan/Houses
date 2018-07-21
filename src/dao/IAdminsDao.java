package dao;

import entity.Admins;

public interface IAdminsDao {
	/*
	 * 管理员登录
	 */
	public Admins getAdminByPhoneAndPass(String account,String password);
	/*
	 * 管理员修改密码
	 */
	public boolean changeAdminPass(String password,int id);

}
