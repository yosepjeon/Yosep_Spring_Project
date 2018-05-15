package yosep.com.main.board.command;

import org.springframework.ui.Model;

import yosep.com.main.board.dao.BDao;

public interface BCommand {
	public void execute(Model model);
	
}

