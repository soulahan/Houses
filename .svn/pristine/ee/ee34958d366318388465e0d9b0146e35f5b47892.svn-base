package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.HouseNews;
import service.IHouseNewsService;
import service.impl.HouseNewsServiceImpl;
@WebServlet(name="DeletListServlet",urlPatterns="/DeletListServlet")
public class DeletListServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		int houseId =Integer.parseInt(req.getParameter("aa"));
		IHouseNewsService house = new HouseNewsServiceImpl();
		PrintWriter out = resp.getWriter();
		boolean flag = house.deleteHouse(houseId);
		if(flag){
			out.print("<script>alert('ok');location.href='"+req.getContextPath()+"/ListServlet'</script>");
		}else{
			out.print("<script>alert('xx')</script>");
		}
	}
	
	
}
