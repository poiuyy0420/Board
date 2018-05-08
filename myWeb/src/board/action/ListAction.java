package board.action;

import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.BoardDAO;
import board.model.BoardVO;
//글목록 처리 클래스
public class ListAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String pageNum = request.getParameter("pageNum"); //페이지 번호
		if(pageNum == null) {
			pageNum = "1";
		}
		int pageSize = 5; //한 페이지의 글의 개수
		int currentPage = Integer.parseInt(pageNum); //현재페이지
		//한 페이지의 시작글 번호
		int startRow = (currentPage - 1) * pageSize + 1;
		int endRow = currentPage * pageSize; //한페이지의 마지막 글번호
		int count = 0;
		int number = 0;
		List<BoardVO> articleList = null;
		BoardDAO dbPro = BoardDAO.getInstance(); //DB연동
		count = dbPro.getArticleCount(); //전체 글의 수
		if(count > 0) { //현재 페이지에 해당하는 글 목록
			articleList = dbPro.getArticles(startRow, endRow);
		}else {
			articleList = Collections.emptyList(); //비어있는 빈 목록을 반환! EmptyList를 싱글톤 형태로 제공하게 되면 비어있는 List를 리턴함과 동시에 싱글톤으로 단 하나의 인스턴스만 참조하므로 메모리 낭비도 방지한다
		}
		number = count-(currentPage-1)*pageSize; //글목록에 표시할 글번호
		//해당 뷰에서 사용할 속성
		request.setAttribute("currentPage", new Integer(currentPage));
		request.setAttribute("startRow", new Integer(startRow));
		request.setAttribute("endRow", new Integer(endRow));
		request.setAttribute("count", new Integer(count));
		request.setAttribute("pageSize", new Integer(pageSize));
		request.setAttribute("number", new Integer(number));
		request.setAttribute("articleList", articleList);
		return "/board/list.jsp"; //해당뷰
	}

}
