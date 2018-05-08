package cn.brust.zufang.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import cn.brust.zufang.mapper.ShopAreaMapper;

@RestController
public class Test {

	@Autowired
	ShopAreaMapper mapper;
	
	@Autowired
	JdbcTemplate JdbcTemplate;
	
	@GetMapping("/shenzhen")
	public List<Map<String, Object>> getAll(){
		List<Map<String, Object>> list = JdbcTemplate.queryForList("select * from shop_area where `level`=1;");
		return list;
	}
	
	@GetMapping("/shenzhen/{id}")
	public List<Map<String, Object>> getOther(@PathVariable("id")Integer id){
		List<Map<String, Object>> list = JdbcTemplate.queryForList("select * from shop_area where parentid="+id);
		return list;
	}
}
