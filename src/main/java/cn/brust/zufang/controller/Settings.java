/**
 * 
 */
package cn.brust.zufang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
/**
 * 这个类主要用于全局设置
 * @author Brust
 * @data 2018年5月9日
 */
@Controller
public class Settings {
	
	@GetMapping(value= {"index","index.html","home","/"})
	public String index() {
		return "index";
	}
	@GetMapping("map")
	public String map() {
		return "map";
	}
}
