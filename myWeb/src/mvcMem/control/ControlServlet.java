package mvcMem.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvcMem.action.Action;


public class ControlServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String cmd = request.getParameter("cmd"); //명령어를 받음
		System.out.println(cmd);
		if(cmd!=null) { //명령어가 들어온 경우
			ActionFactory factory = ActionFactory.getInstance(); //다형성을 이용하여 해당객체를 생성
			Action action = factory.getAction(cmd);
			ActionForward af = action.execute(request, response); //명령어를 처리
			if(af.isRedirect()) { //리다이렉트
				response.sendRedirect(af.getUrl());
			}else { //포워딩
				RequestDispatcher rd = request.getRequestDispatcher(af.getUrl());
				rd.forward(request, response);
			}
		}else { //명령어가 (null) 없을경우
			PrintWriter out = response.getWriter();
			out.println("<html>");
			out.println("<head><title>Erro</title></head>");
			out.println("<body>");
			out.println("<h1>올바른 요청이 아닙니다!</h1>");
			out.println("<h4>http://localhost:8080/myWeb/mvcMem/member.mdo?cmd=요청키워드</h4>");
			out.println("</body>");
			out.println("</html>");
		}
		
	}

}
