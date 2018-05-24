package yosep.com.main.board.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.ui.Model;

import yosep.com.main.board.dao.BDao;
import yosep.com.main.board.dto.BDto;

public class BReplyViewCommand implements BCommand{

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		ApplicationContext board_context = new GenericXmlApplicationContext("/board-context.xml");
		BDao dao = (BDao) board_context.getBean("bDao",BDao.class);
		
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		String bId = request.getParameter("bId");
		
		BDto dto = dao.reply_view(bId);
		
		model.addAttribute("reply_view",dto);
	}

}
