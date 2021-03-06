package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.IAdminsService;
import service.impl.AdminsServiceImpl;
@SuppressWarnings("serial")
@WebServlet(name="passServlet",urlPatterns="/passServlet")
public class PassServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		IAdminsService passadmin = new AdminsServiceImpl();
		String newpass = req.getParameter("newpass");
		PrintWriter out = resp.getWriter();
		boolean f = passadmin.changeAdminPass(newpass, 1);
		if(f) {
			resp.setCharacterEncoding("utf-8");
			resp.setContentType("text/html;charset=utf-8");
			out.println("<html>");
			out.println("<body>");
			out.println("<h2 style='color:red;'>modify successfully</h2>");
			out.println("</body>");
			out.println("</html>");
			out.close();
		}else {
			out.println("<html>");
			out.println("<body>");
			out.println("<h2>change failed</h2>");
			out.println("</body>");
			out.println("</html>");
			out.close();
		}
	
	}

}
