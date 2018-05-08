package mvc.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.action.Action;


@WebServlet("/ControlServlet")
public class ControlServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		String cmd = request.getParameter("cmd"); //명령어를 받음
		if(cmd!=null) { //명령어가 들어온 경우
			ActionFactory factory = ActionFactory.getInstance();// 다형성을 이용하여 객체를 생성
			Action action = factory.getAction(cmd);
			ActionForward af = action.execute(request, response);// 명령을 처리
			if(af.isRedirect()) { //리다이이랙트
				response.sendRedirect(af.getUrl());
			}else { //포워딩
				RequestDispatcher rd = request.getRequestDispatcher(af.getUrl());
				rd.forward(request, response);
			}
		}else { // 명령어가 없는(null) 경우
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<html>");
			out.println("<head><title>Error</title><head>");
			out.println("<body>");
			out.println("<h4>올바른 요청이 아닙니다!</h4>");
			out.println("<h4>http://localhost:8080:mvc/tedst.do?cmd=요청키워드</h4>");
			out.println("</body>");
			out.println("</html>");
			

		}
	}
}
