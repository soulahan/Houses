package service.impl;

import dao.IAdminsDao;
import dao.impl.AdminsDaoImpl;
import entity.Admins;
import service.IAdminsService;

public class AdminsServiceImpl implements IAdminsService {
	IAdminsDao dao = new AdminsDaoImpl();

	@Override
	public Admins getAdminByPhoneAndPass(String account, String password) {
		
		return dao.getAdminByPhoneAndPass(account, password);
	}

	@Override
	public boolean changeAdminPass(String password, int id) {

		return dao.changeAdminPass(password, id);
	}
}
