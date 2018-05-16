package yosep.com.main.board.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import yosep.com.main.board.command.BCommand;
import yosep.com.main.board.command.BListCommand;
import yosep.com.main.board.command.BWriteCommand;

@Controller
public class BController {
	
	BCommand command;
	
	
	
	@RequestMapping("/board/list")
	public String list(Model model) {
		System.out.println("list jsp 호출");
		
		command = new BListCommand();
		command.execute(model);
		return "list";
	}

	@RequestMapping("/board/write_view")
	public String write_view(Model model) {
		System.out.println("write_view jsp 호출");

		return "write_view";
	}

	@RequestMapping("/board/write")
	public String write(HttpServletRequest request, Model model) {
		System.out.println("write()");
		model.addAttribute("request",request);
		command = new BWriteCommand();
		command.execute(model);

		return "list";
	}

	@RequestMapping("/board/content_view")
	public String content_view(HttpServletRequest request, Model model) {
		System.out.println("content_view()");

		return "content_view";
	}

	@RequestMapping(method = RequestMethod.POST, value = "/board/modify")
	public String modify(HttpServletRequest request, Model model) {
		System.out.println("modify()");

		return "list";
	}

	@RequestMapping("/board/reply_view")
	public String reply_view(HttpServletRequest request, Model model) {
		System.out.println("reply_view(");
		
		return "reply_view";
	}
	
	@RequestMapping("/board/reply")
	public String reply(HttpServletRequest request, Model model) {
		System.out.println("reply()");
		
		return "list";
	}
	
	@RequestMapping("/board/delete")
	public String delete(HttpServletRequest request, Model model) {
		System.out.println("delete()");
		
		return "list";
	}
}
