package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import entity.HouseNews;
import service.IHouseNewsService;
import service.impl.HouseNewsServiceImpl;
@WebServlet(name="SingleServlet",urlPatterns="/SingleServlet")
public class SingleServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int houseId = Integer.parseInt(req.getParameter("houseId"));
		System.out.println(houseId);
		resp.setCharacterEncoding("utf-8");
		IHouseNewsService listhousenews = new HouseNewsServiceImpl();
		HouseNews news = listhousenews.houseById(houseId);
		JSONArray array = new JSONArray();
			JSONObject obj = new JSONObject();
			obj.put("tArea", news.getArea());
			obj.put("tBedNumber",news.getBedNumber() );
			obj.put("tBath", news.getBath());
			obj.put("tType", news.getHouseType());
			obj.put("tDate", news.getDateOfHouseCard());
			obj.put("tContact", news.getContact());
			obj.put("tMessage", news.getDetailedMessage());
			array.add(obj);
		System.out.println(array);
		PrintWriter out = resp.getWriter();
		out.println(array);
	}
 
	
	
	

}

