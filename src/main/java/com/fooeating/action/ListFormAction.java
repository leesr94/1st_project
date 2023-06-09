package com.fooeating.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fooeating.commons.Action;
import com.fooeating.commons.ActionForward;
import com.fooeating.db.PublicDAO;
import com.fooeating.db.RestaurantDTO;
import com.fooeating.db.Restaurant_menuDTO;

public class ListFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, 
			HttpServletResponse response) throws Exception {
		System.out.println(" M : listFormAction_execute() 호출");
		
		// 한글 처리
		request.setCharacterEncoding("UTF-8");
		
		// 검색어 search(파라미터) 정보를 저장
		String search = request.getParameter("search");
		System.out.println("search : " + search);
		String addr_city = request.getParameter("addr_city");
		String addr_district = request.getParameter("addr_district");
		System.out.println("addr : " + addr_city + ", " + addr_district);
		
		PublicDAO dao = new PublicDAO();
		
		int count = 0;

		if(search != null) { // 검색어만 있을 때
			count = dao.getListCount(search.trim(), addr_city, addr_district);
			System.out.println("검색어 o, 지역o");
		} else {
			count = dao.getListCount();
			System.out.println("검색어 x, 지역 x");
		}
		
		
//		List<RestaurantDTO> listForm = dao.getlistForm();
//		System.out.println("회원 수 : " + listForm.size());
		
		
		ActionForward forward = new ActionForward();
		
		// 페이징 처리 -----------------
//		int count = dao.getListCount(); 			// 전체 가게 수
//		System.out.println("가게수 : " + count);
		
		int pageSize = 12;							// 한 페이지에 출력할 가게 수
		
		
		String pno = request.getParameter("pno");
		if(pno == null) { pno = "1"; }				// 현재 페이지 정보 체크
		
		int currentPage = Integer.parseInt(pno);
		int startRow = (currentPage - 1) * pageSize + 1;	// 시작행 번호 계산
		int endRow = currentPage * pageSize;				// 끝행 번호 계산
		
		
		// ---------------------------------------------------------------------
		List<RestaurantDTO> listForm = null;
		
		if(search != null) {
			listForm = dao.getListInfo(startRow, pageSize, search.trim(), addr_city, addr_district);
			System.out.println("검색어 o, 지역o");
		} else {
			listForm = dao.getListInfo(startRow, pageSize);
			System.out.println("검색어 x, 지역 x");
		}
		
		System.out.println("listForm : " + listForm.toString());
		// ---------------------------------------------------------------------

		
		///-------------------------
//		HttpSession session = request.getSession();
//		String user_id = (String)session.getAttribute("user_id");
//        RestaurantDTO restal = dao.getRestaurantallow(user_id);
//        Restaurant_menuDTO menudto = dao.getRestaurantmenuallow(restal.getRest_id());
//        System.out.println("출력할 가게의 정보" + restal);
//        System.out.println("출력할 가게의 메뉴 정보 :" + menudto);
//        request.setAttribute("restal",restal);
//        request.setAttribute("menudto", menudto);
		
		///-------------------------

		
		request.setAttribute("listForm", listForm);
		request.setAttribute("count", count);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("pageSize", pageSize);
		request.setAttribute("pno", pno);
		
		// 연결된 view에 출력
		forward.setPath("./list/listForm.jsp");
		forward.setRedirect(false);
		
		return forward;
	}
}
