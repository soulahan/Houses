package dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;
import util.DBHelp;

import dao.IHouseNewsDao;
import entity.HouseNews;

public class HouseNewsDaoImpl implements IHouseNewsDao {

	@Override
	public List<HouseNews> getAllHouse(int currPage , int pageSize) {
	   //    遍历全部房源信息  分页
		QueryRunner   qr  =  new  QueryRunner(DBHelp.getDataSource()
				)  ;
		
		String sql  =  "SELECT * FROM housenews limit ? , ?" ;
		
		List<HouseNews> flist = null ;
		
		
		
		try {
			Object[]   obj = {(currPage-1)*pageSize ,  pageSize};
			flist  =  qr.query(sql, new BeanListHandler<HouseNews>(HouseNews.class),obj) ;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	     
		return flist;
	}
	//  遍历房源
	public List<HouseNews> getAllHouse() {
		   //    遍历全部房源信息  
			QueryRunner   qr  =  new  QueryRunner(DBHelp.getDataSource()
					)  ;
			
			String sql  =  "SELECT * FROM housenews" ;
			
			List<HouseNews> list = null ;
			
			
			
			try {
				list  =  qr.query(sql, new BeanListHandler<HouseNews>(HouseNews.class)) ;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		     
			return list;
		}
	
   //   统计房源信息的数量
	/**
	 * 总记录数
	 */
	public static int getAllHouseNum(){
		QueryRunner qr = new QueryRunner(DBHelp.getDataSource());
		String sql = "select  count(*) as cc from housenews";
		Object obj = null;
		try {
			obj = qr.query(sql, new ScalarHandler<Object>("cc"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
	   /* System.out.println(Integer.parseInt(obj.toString()));  */
	    return Integer.parseInt(obj.toString());
	}
	
/*	public static void main(String[] args) {
		HouseNewsDaoImpl dao = new HouseNewsDaoImpl();
	   //dao.getAllHouseNum();
	}*/
	

	//   新增房源信息
	@Override
	public boolean addHouse(String userName ,String houseTitle, String houseType, int area,
			int bedNumber, int price, String housePictures,
			String dateOfHouseCard, String location, int contact,
			String detailedMessage, int bath, String carBarn) {
		 QueryRunner qr   =  new  QueryRunner(DBHelp.getDataSource()) ;
		    String  sql  =   "INSERT  INTO housenews(userName,houseTitle,houseType,area,bedNumber,price,housePictures,dateOfHouseCard,location,contact,detailedMessage,bath,carBarn) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?);";
	        int  no ;
			Object[]   obje  =   {userName, houseTitle,houseType,area,bedNumber,price,housePictures,dateOfHouseCard,location,contact,detailedMessage,bath,carBarn};
	        try {
				no = qr.update(sql, obje );
				if(no>0){
					   return true ;
				}else {
					return false ;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return false;
	}
     
	//   删除房源信息
	@Override
	public boolean deleteHouse(int houseid) {
          QueryRunner  qr   =   new QueryRunner(DBHelp.getDataSource())  ;
          
          String sql  =  " DELETE FROM  housenews where houseId = ? "  ;
          
          int nu ;
          
          try {
			nu  =  qr.update(sql , houseid);
			if(nu>0){
				return true ;
			}else {
				return  false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
  
	//   修改房源信息
	@Override
	public boolean updateHouse(String userName ,String houseTitle, String houseType, int area,
			int bedNumber, int price, String housePictures,
			String dateOfHouseCard, String location, int contact,
			String detailedMessage, int bath, String carBarn, int houseId) {
		
		QueryRunner  qr  =   new   QueryRunner(DBHelp.getDataSource()) ;
		
	    String  sql  =   "UPDATE  housenews SET userName = ? ,houseTitle = ? ,houseType = ? ,area = ? ,bedNumber = ? ,price = ? ,housePictures = ? ,dateOfHouseCard = ? ,location= ?,contact = ? , detailedMessage = ? ,bath = ? ,carBarn = ?   WHERE houseId = ?  " ;

	    int nou ;
	    
	    Object[]  reoa  =  {userName, houseTitle, houseType , area , bedNumber , price , housePictures , dateOfHouseCard ,  location , contact , detailedMessage, bath , carBarn , houseId}  ; 
	    
	           try {
				nou  =  qr.update(sql, reoa );
				if (nou > 0){
					return true ;
				}else {
					return false ;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		return false;
	}
	
	//通过ID查询房屋信息
	@Override
	public HouseNews houseById(int houseId) {
	  QueryRunner qr = new QueryRunner(DBHelp.getDataSource());
	  String sql = "select * from housenews where houseId=?" ;
	  HouseNews houseNews = null;
	  
	  try {
		houseNews = qr.query(sql,new BeanHandler<HouseNews>(HouseNews.class), houseId);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  
	  
		return houseNews;
	}
	//   模糊查询搜索房源
	@Override
	public List<HouseNews> houseByLocation(String locat) {
		QueryRunner qr  = new QueryRunner(DBHelp.getDataSource()) ;
		String  sql = " SELECT * FROM  housenews WHERE houseTitle LIKE  ? " ;
		List<HouseNews>  Mlist  = null ;
		try {
			Mlist = qr.query(sql, new BeanListHandler<HouseNews>(HouseNews.class),locat);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return Mlist;
	}

	
}
