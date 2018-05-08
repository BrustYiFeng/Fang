package cn.brust.zufang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Settings {
	
	@GetMapping(value= {"index","index.html","home","/"})
	public String index() {
		return "index";
	}
}
