package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Admins;
import service.IAdminsService;
import service.impl.AdminsServiceImpl;
@SuppressWarnings("serial")
@WebServlet(name="AdminloginServlet",urlPatterns="/AdminloginServlet")
public class AdminloginServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String account = req.getParameter("account");
		String password =  req.getParameter("password");
		IAdminsService aminservice = new AdminsServiceImpl();
		Admins admins = aminservice.getAdminByPhoneAndPass(account, password);
		if(null != admins) {
			req.setAttribute("account", account);
			req.getRequestDispatcher("index.jsp").forward(req, resp);
		}
		else {
			resp.sendRedirect("administratorlogin.jsp");
		}
	
	}

}
