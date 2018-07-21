package dao.impl;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;

import dao.ICheckDao;
import util.DBHelp;

public class CheckDaoImpl implements ICheckDao {

	//批量删除房源信息
	@Override
	public void delHouses(String[] houseIds) {
		QueryRunner  qr   =   new QueryRunner(DBHelp.getDataSource());
		Object[][] params = new Object[houseIds.length][];//高维也就是行数确定执行sql语句的次数，低维也就是列数是给？赋值
		for (int i = 0; i < params.length; i++) {//循环行数,决定SQL语句执行的次数
			params[i] = new Object[]{houseIds[i]};//给低维也就是列数“？”赋值，每行只给一列赋值，决定每条SQL语句的参数个数
			}
		try {
			qr.batch("delete from housenews where houseId=?", params);
		} catch (SQLException e) {

			e.printStackTrace();
		}
	}

}

