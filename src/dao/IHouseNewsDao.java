package dao;

import java.util.List;

import entity.HouseNews;

  /* 房源信息Dao层*/
public interface IHouseNewsDao {
	
	//   房源信息遍历  分页
	public List<HouseNews>  getAllHouse(int currPage , int pageSize) ;
	
    //  房源信息遍历  
	public List<HouseNews>  getAllHouse() ;
	
	//   新增房源信息
	public  boolean    addHouse(String userName ,String  houseTitle  ,  String  houseType  ,  int area   ,  int bedNumber  ,   int  price  ,   String housePictures  , String   dateOfHouseCard ,  String  location  , int  contact ,  String detailedMessage ,  int  bath  , String carBarn);
	
    //   删除房源信息
	public boolean  deleteHouse(int houseid);

    //   修改房屋信息
	public boolean  updateHouse(String userName ,String  houseTitle  ,  String  houseType  ,  int area   ,  int bedNumber  ,   int  price  ,   String housePictures  , String   dateOfHouseCard ,  String  location  , int  contact ,  String detailedMessage ,  int  bath  , String carBarn,int houserId);

	//通过ID查询房屋信息
	public HouseNews  houseById (int houseId);
	
	//  搜索房屋信息
	public List<HouseNews>  houseByLocation(String locat);
}
