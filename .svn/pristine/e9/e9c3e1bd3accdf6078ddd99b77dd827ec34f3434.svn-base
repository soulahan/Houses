package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omg.PortableInterceptor.HOLDING;

import dao.impl.HouseNewsDaoImpl;
import entity.HouseNews;
import service.IHouseNewsService;
import service.impl.HouseNewsServiceImpl;
import util.Page;

@SuppressWarnings("serial")
@WebServlet(name="ListServlet",urlPatterns="/ListServlet")
public class ListServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse respose) throws ServletException, IOException {
		
		doPost(request, respose);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse respose) throws ServletException, IOException {
		IHouseNewsService newSece = new HouseNewsServiceImpl();
	
		String Page = request.getParameter("Page")==null ? "1":request.getParameter("Page");
		
		int pageSize=5;
		
        List<HouseNews> ftlist = newSece.getAllHouse(Integer.parseInt(Page),pageSize) ;
        
        Page  pa= new  Page() ; 
        
        pa.setCurrPageNo(Integer.parseInt(Page));
        pa.setPageSize(pageSize);
        
	    pa.setTotalPageCount(HouseNewsDaoImpl.getAllHouseNum()%5==0?HouseNewsDaoImpl.getAllHouseNum()/5:HouseNewsDaoImpl.getAllHouseNum()/5+1);

	    pa.setNewsList(ftlist);
        
		request.setAttribute("page", pa);
		
		request.getRequestDispatcher("list.jsp").forward(request, respose);
	}

}
