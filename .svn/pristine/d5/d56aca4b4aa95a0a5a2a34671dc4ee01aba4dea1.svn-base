package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.IUsersDao;
import dao.impl.UsersDaoImpl;
import entity.Users;
@WebServlet(name="UserAddServlet",urlPatterns="/UserAddServlet")
public class UserAddServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String name = req.getParameter("name");
		String passWord = req.getParameter("pass");
		String email = req.getParameter("email");
		String phone = req.getParameter("phone");
		PrintWriter out = resp.getWriter();
		IUsersDao user = new UsersDaoImpl();
		boolean flag = user.addUserByUserName(name, phone, passWord, email);
		if(flag){
			out.print("<script>alert('ok');location.href='login.jsp'</script>");
		}else{
			out.print("<script>alert('xx')</script>");
		}
		
	}
}
