package mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//Action 인터페이스
public interface CommandProcess {
	//reqeustPro -> execute()메서드
	public String requestPro(HttpServletRequest request, HttpServletResponse response)throws Throwable;
}
