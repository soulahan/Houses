package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.IHouseNewsDao;
import dao.impl.HouseNewsDaoImpl;
import service.ICheckService;
import service.impl.CheckServiceImpl;
@WebServlet(name="PagDeleteServlet",urlPatterns="/PagDeleteServlet")
public class PagDeleteServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("becheckbox");
		String[] names = name.split(",");
		
		
		
		ICheckService checkservice = new CheckServiceImpl();
		checkservice.delHouses(names);
		

	}

}
