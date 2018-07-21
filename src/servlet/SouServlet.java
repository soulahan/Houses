package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.HouseNews;
import service.IHouseNewsService;
import service.impl.HouseNewsServiceImpl;
@WebServlet (name="SouServlet" , urlPatterns="/SouServlet")
public class SouServlet extends  HttpServlet{
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    		throws ServletException, IOException {
    	// TODO Auto-generated method stub
    	doPost(request, response);
    }
     
     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    		throws ServletException, IOException {
    	
    	 response.setCharacterEncoding("utf-8");
    	 request.setCharacterEncoding("utf-8");

 		 String dwed = request.getParameter("keywords") ;
 		 
 		 System.out.println(dwed );
 		 
 		 if (null==dwed){
 			 dwed ="%%";
 		 }else {
			dwed="%"+dwed+"%";
			
		}
 		 
 		 System.out.println(dwed);
 		 
 		 IHouseNewsService seof  = new HouseNewsServiceImpl() ;
 		 
 		 System.out.println(dwed);

 		 
 		 List<HouseNews> Mlist = seof.houseByLocation(dwed);
 		 
 		request.setAttribute("housem", Mlist);
 			request.getRequestDispatcher("MoHu.jsp").forward(request, response);
 		//response.sendRedirect("MoHu.jsp");
    }
}
