package yosep.com.main.board.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.ui.Model;

import yosep.com.main.board.dao.BDao;

public class BModifyCommand implements BCommand{

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		ApplicationContext board_context = new GenericXmlApplicationContext("/board-context.xml");
		BDao dao = (BDao) board_context.getBean("bDao",BDao.class);
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		
		String bId = request.getParameter("bId");
		String bName = request.getParameter("bName");
		String bTitle = request.getParameter("bTitle");
		String bContent = request.getParameter("bContent");
		
		dao.modify(bId, bName, bTitle, bContent);
	}
	
}
