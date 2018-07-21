package servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import service.IHouseNewsService;
import service.impl.HouseNewsServiceImpl;
@WebServlet(name="UpDateListServlet",urlPatterns="/UpDateListServlet")
public class UpDateListServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	}
	
	
	

	@Override 
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uid = req.getParameter("uid");
		int houseId = Integer.parseInt(uid);
		IHouseNewsService housenews = new HouseNewsServiceImpl();
		FileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		upload.setHeaderEncoding("utf-8");
		req.setCharacterEncoding("utf-8");
		//鍒ゆ柇鏄惁鏄痬ultipart/form-data鏂瑰紡鎻愪氦琛ㄥ崟
		  String authour="";
		  String uploadpath = null;
		  String fileName = null;
		  String houseTitle="11";
		  String houseType ="11";
		  int area =1;
		  int bedNumber =1;
		  int price =1;
		  String housePictures ="11" ;              
	      String dateOfHouseCard ="2018-02-17" ;
		  String location0 ="";
		  String location1 ="";
		  String location2 ="";
		  String locations ="";
		  int contact =1;	
		  String detailedMessage ="11";
		  int bath =1;
		  String carBarn ="true";
		if(upload.isMultipartContent(req)) {
			try {
				//鍓嶇琛ㄥ崟涓墍鏁版嵁缁忚繃瑙ｆ瀽琚皝瑁呭湪list闆嗗悎涓�
			List<FileItem> list= upload.parseRequest(req);
			Iterator<FileItem> it = list.iterator();
			while(it.hasNext()) {
				FileItem item = (FileItem)it.next();
				if(item.isFormField()) {
					fileName = item.getFieldName();
					if(fileName.equals("title")) {
						houseTitle=item.getString("utf-8");
						System.out.println(houseTitle);
					}else if(fileName.equals("house_type")) {
						houseType =item.getString("utf-8");
					}else if(fileName.equals("s_area")) {
						area =Integer.parseInt(item.getString("utf-8"));
					}else if(fileName.equals("bed_number")) {
						bedNumber =Integer.parseInt(item.getString("utf-8"));
					}else if(fileName.equals("bath_number")) {
						bath = Integer.parseInt(item.getString("utf-8"));
					}else if(fileName.equals("car_barn")) {
						carBarn = item.getString("utf-8");
					}else if(fileName.equals("s_price")) {
						price =Integer.parseInt(item.getString("utf-8"));
					}else if(fileName.equals("s_desc")) {
						dateOfHouseCard = item.getString("utf-8");
					}else if(fileName.equals("location0")) {
						location0 = item.getString("utf-8");
						
					}else if(fileName.equals("location1")) {
						location1 = item.getString("utf-8");
						
					}else if(fileName.equals("location2")) {
						location2 = item.getString("utf-8");
						
					}else if(fileName.equals("contact")) {
						contact = Integer.parseInt(item.getString("utf-8"));
					}else if(fileName.equals("authour")) {
						authour = item.getString("utf-8");
					}else if(fileName.equals("content")) {
						detailedMessage = item.getString("utf-8");
					}
				}else {

					fileName = item.getName();
					System.out.println(fileName);
					uploadpath = req.getSession().getServletContext().getRealPath("upload/");
					      housePictures =fileName;        
			
				    System.out.println(uploadpath);
				    try {
						item.write(new File(uploadpath,fileName));
					} catch (Exception e) {
						
						e.printStackTrace();
					}
				}
			}
			} catch (FileUploadException e) {	
				e.printStackTrace();
			}
		}
	  locations =location0+location1+location2;
	  String userName =authour;

		PrintWriter out = resp.getWriter();
		IHouseNewsService house = new HouseNewsServiceImpl();
		boolean flag = house.updateHouse(userName, houseTitle, houseType, area, bedNumber, price, housePictures, dateOfHouseCard, locations, contact, detailedMessage, bath, carBarn, houseId);
		

		if(flag){
			out.print("<script>alert('ok');location.href='ListServlet'</script>");
		}else{
			out.print("<script>alert('xxx')</script>");
		}
	}
}
