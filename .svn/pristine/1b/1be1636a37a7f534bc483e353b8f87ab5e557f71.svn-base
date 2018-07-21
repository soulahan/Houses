package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.Users;
import service.IUsersService;
import service.impl.UsersServiceImpl;

@WebServlet(name = "UserLoginServlet", urlPatterns = "/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");

		String name = req.getParameter("name");

		String passWord = req.getParameter("passWord");

		IUsersService user = new UsersServiceImpl();
		Users users = user.userLoginByName(name, passWord);

		if (null != users) {

			HttpSession session = req.getSession();
			session.setAttribute("users", users);
			resp.sendRedirect("HomeIndexServlet");
		} else {
			resp.sendRedirect("login.jsp");
		}

	}
}
