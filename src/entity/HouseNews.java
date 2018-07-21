package entity;
//   房源信息表
public class HouseNews {
	// 房源信息
	private int userId;//  用户ID
	private   int houseId ;   // 房屋ID
	private   String userName ;     
	private   String houseTitle ;    //  房屋标题
	private  String houseType ;     //   房屋类型
	private  int area ;     //   房屋面积
	private  int bedNumber ;     //   卧室数量
	private  int price ;      //   价格
	private  String housePictures  ;             //      图片
	private  String dateOfHouseCard ;       //   房产证日期
	private  String location ;    //   位置
	private  int contact;	    // 联系方式
	private  String detailedMessage ;   // 详情说明
	private  int bath ;     //  卫生间
	private  String carBarn ;    //是否有车库
	//  set get 方法
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getHouseId() {
		return houseId;
	}
	public void setHouseId(int houseId) {
		this.houseId = houseId;
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getHouseTitle() {
		return houseTitle;
	}
	public void setHouseTitle(String houseTitle) {
		this.houseTitle = houseTitle;
	}
	public String getHouseType() {
		return houseType;
	}
	public void setHouseType(String houseType) {
		this.houseType = houseType;
	}
	public int getArea() {
		return area;
	}
	public void setArea(int area) {
		this.area = area;
	}
	public int getBedNumber() {
		return bedNumber;
	}
	public void setBedNumber(int bedNumber) {
		this.bedNumber = bedNumber;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getHousePictures() {
		return housePictures;
	}
	public void setHousePictures(String housePictures) {
		this.housePictures = housePictures;
	}
	public String getDateOfHouseCard() {
		return dateOfHouseCard;
	}
	public void setDateOfHouseCard(String dateOfHouseCard) {
		this.dateOfHouseCard = dateOfHouseCard;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public int getContact() {
		return contact;
	}
	public void setContact(int contact) {
		this.contact = contact;
	}
	public String getDetailedMessage() {
		return detailedMessage;
	}
	public void setDetailedMessage(String detailedMessage) {
		this.detailedMessage = detailedMessage;
	}
	public int getBath() {
		return bath;
	}
	public void setBath(int bath) {
		this.bath = bath;
	}
	public String getCarBarn() {
		return carBarn;
	}
	public void setCarBarn(String carBarn) {
		this.carBarn = carBarn;
	}    
	//   构造方法
	public HouseNews(int houseId,String userName, int userId, String houseTitle,
			String houseType, int area, int bedNumber, int price,
			String housePictures, String dateOfHouseCard, String location,
			int contact, String detailedMessage, int bath, String carBarn) {
		
		this.userId = userId;
		this.houseId = houseId;
		this.userName = userName;
		this.houseTitle = houseTitle;
		this.houseType = houseType;
		this.area = area;
		this.bedNumber = bedNumber;
		this.price = price;
		this.housePictures = housePictures;
		this.dateOfHouseCard = dateOfHouseCard;
		this.location = location;
		this.contact = contact;
		this.detailedMessage = detailedMessage;
		this.bath = bath;
		this.carBarn = carBarn;
	}
	public HouseNews() {
		
	}
	
	
	

	}
