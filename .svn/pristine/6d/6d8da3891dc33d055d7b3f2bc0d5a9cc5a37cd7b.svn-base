package tools;

import java.awt.image.BufferedImage;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name="SaveCodeServlet",urlPatterns="/SaveCodeServlet")
public class SaveCodeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public SaveCodeServlet() {
        super();
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		SaveCode saveCode=new SaveCode("abcdefghijklmnopqrstuvwxyz123456789".toUpperCase().toCharArray(),
				100, 25, 6);

		response.setHeader("Pragma", "No-cache");
		
		response.setHeader("Cache-Control", "no-cache");
	
		response.setDateHeader("Expires", 0);
		
		response.setContentType("image/jpeg");
		
		saveCode.createSaveCodeImage();
		
		BufferedImage img = saveCode.getImage();
		
		String codeString = saveCode.getCodeString();
		
		HttpSession session = request.getSession();
	
		session.setAttribute("checkCode", codeString);
		try {
			
			ImageIO.write(img, "JPEG", response.getOutputStream());
			
		} catch (Exception e) {

			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
