/**
 * 
 */
package cn.brust.zufang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
/**
 * �������Ҫ����ȫ������
 * @author Brust
 * @data 2018��5��9��
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
