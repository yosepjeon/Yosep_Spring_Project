package yosep.com.main.board.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import yosep.com.main.board.command.BCommand;

@Controller
public class BController {
	
	BCommand command;
	
	public JdbcTemplate template;
	
	
	@RequestMapping("/board/list")
	public String list(Model model) {
		System.out.println("list jsp 호출");

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
