package yosep.com.main.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BlogController {
	@RequestMapping("/blog")
	public String blog_index_view(Model model) {
		return "/blog/index";
	}
	
	@RequestMapping("/blog/first")
	public String blog_first_view(Model model) {
		return "/blog/start_blog";
	}
	
	@RequestMapping("/blog/signup")
	public String blog_signup(Model model) {
		return "/blog/signup";
	}
	
	@RequestMapping("/blog/login")
	public String blog_login(Model model) {
		return "/blog/login";
	}
	
	@RequestMapping("/main/blog/signupOk")
	public String blog_signupOk(Model model) {
		return "";
	}
}
