package mvc.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.control.ActionForward;

public class IndexAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("IndexAction의 execute() 수행됨!");
		// 원래는 여기에 DAO객체를 초기화 하고
		// 해당되는 DAO의 메서드를 수행하여 결과값을 얻어오고
		// request.setAttribute(key, value)를 이용하여
		// View(JSP)에 전달할 값을 셋팅한다.
		// 그리고 그 다음 아래와 같이 페이지를 전달한다
		return new ActionForward("index.jsp", false);
	}

}
