package dao.impl;

import java.sql.SQLException;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import dao.IAdminsDao;
import entity.Admins;
import util.DBHelp;

public class AdminsDaoImpl implements IAdminsDao {

	@Override
	public Admins getAdminByPhoneAndPass(String account, String password) {
		QueryRunner qr = new QueryRunner(DBHelp.getDataSource());
		String sql = "SELECT * FROM administrators where account=? and password=?";
		Object[] obj = {account,password};
		Admins admins = null;
		try {
			admins = qr.query(sql, new BeanHandler<Admins>(Admins.class),obj);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return admins;
	}

	@Override
	public boolean changeAdminPass(String password, int id) {
		QueryRunner qr = new QueryRunner(DBHelp.getDataSource());
		String sql = "update administrators set password=? where id=?";
		Object[] obj = {password,id};
			int f;
			try {
				f = qr.update(sql,obj);
				if(f>0) {
					return true;
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}	
		return false;
	}
}
