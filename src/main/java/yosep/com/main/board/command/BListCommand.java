package yosep.com.main.board.command;

import java.util.ArrayList;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.ui.Model;

import yosep.com.main.board.dao.BDao;
import yosep.com.main.board.dto.BDto;

public class BListCommand implements BCommand{

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub
		ApplicationContext board_context = new GenericXmlApplicationContext("/board-context.xml");
		BDao dao = (BDao) board_context.getBean("bDao",BDao.class);
		
		ArrayList<BDto>dtos = dao.list();
		
		model.addAttribute("list",dtos);
		
	}

}
