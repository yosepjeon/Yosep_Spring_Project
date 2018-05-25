package yosep.com.main.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BlogController {
	@RequestMapping("/blog")
	public String blog_view(Model model) {
		return "/blog/index";
	}
}
