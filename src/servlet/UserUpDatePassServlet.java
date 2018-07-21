package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Users;
import service.IUsersService;
import service.impl.UsersServiceImpl;
@WebServlet(name="UserUpDatePassServlet",urlPatterns="/UserUpDatePassServlet")
public class UserUpDatePassServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req,resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String tel = req.getParameter("tel");
		String name = req.getParameter("name");
		String pass = req.getParameter("pass");
		PrintWriter out = resp.getWriter();
		IUsersService user = new UsersServiceImpl();
		boolean flag = user.upDateByPhoneAndUserName(pass,name, tel);
		
		if(flag){
			out.print("<script>alert('ok');location.href='login.jsp'</script>");
		}else{
			//out.print("<script>location.href='"+req.getContextPath()+"/UserUpDatePassServlet'</script>");
			out.print("<script>alert('xxx')</script>");
		}
		
	}
	
}
