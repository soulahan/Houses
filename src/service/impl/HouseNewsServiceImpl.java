package service.impl;

import java.util.List;

import dao.IHouseNewsDao;
import dao.impl.HouseNewsDaoImpl;
import entity.HouseNews;
import service.IHouseNewsService;

public class HouseNewsServiceImpl implements IHouseNewsService {

	   IHouseNewsDao  dao  =  new HouseNewsDaoImpl();
	//   遍历房源信息  分页
	@Override
	public List<HouseNews> getAllHouse(int currPage , int pageSize) {
		// TODO Auto-generated method stub
		return dao.getAllHouse( currPage , pageSize); 
		
	} 
	
	//   遍历房源信息  
	@Override
	public List<HouseNews> getAllHouse() {
		// TODO Auto-generated method stub
		return dao.getAllHouse(); 
		
	} 
	 //   发布房源
	@Override
	public boolean addHouse(String userName, String houseTitle, String houseType,
			int area, int bedNumber, int price, String housePictures,
			String dateOfHouseCard, String location, int contact,
			String detailedMessage, int bath, String carBarn) {

		return dao.addHouse(userName, houseTitle, houseType, area, bedNumber, price, housePictures, dateOfHouseCard, location, contact, detailedMessage, bath, carBarn);
	}
    //   删除房源
	@Override
	public boolean deleteHouse(int houseid) {
	
		return dao.deleteHouse(houseid);
	}
   //    修改房源信息
	@Override
	public boolean updateHouse(String userName, String houseTitle, String houseType,
			int area, int bedNumber, int price, String housePictures,
			String dateOfHouseCard, String location, int contact,
			String detailedMessage, int bath, String carBarn, int houseId) {

		return dao.updateHouse(userName, houseTitle, houseType, area, bedNumber, price, housePictures, dateOfHouseCard, location, contact, detailedMessage, bath, carBarn, houseId);
	}

	@Override
	public HouseNews houseById(int houseId) {
		// TODO Auto-generated method stub
		return dao.houseById(houseId);
	}

    //   位置模糊查询房屋信息
@Override
public List<HouseNews> houseByLocation(String locat) {
	// TODO Auto-generated method stub
	return dao.houseByLocation(locat);
}


	 
}
