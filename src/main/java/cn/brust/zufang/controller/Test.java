package cn.brust.zufang.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import cn.brust.zufang.mapper.ShopAreaMapper;

/**
 * 这是用来测试的
 * @author Brust
 * @data 2018年5月9日
 */
@RestController
public class Test {

	@Autowired
	ShopAreaMapper mapper;
	
	@Autowired
	JdbcTemplate JdbcTemplate;
	
	/**
	 * 
	 * @return 返回的是 shopArea的list 所以省份信息
	 */
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
	
	@GetMapping("/shenzhens/{id}")
	public List<Map<String, Object>> getOthers(@PathVariable("id")Integer id){
		List<Map<String, Object>> list = JdbcTemplate.queryForList("select b.* from shop_area b where  EXISTS (select id from shop_area a where a.parentid = "+id+" and b.parentid = a.id)");
		return list;
	}
	
	@GetMapping("/shenzhenss/{id}")
	public List<Map<String, Object>> getOtherss(@PathVariable("id")Integer id){
		List<Map<String, Object>> list = JdbcTemplate.queryForList("select * from shop_area where parentid in (select b.id from shop_area b where  EXISTS (select id from shop_area a where a.parentid = "+id+" and b.parentid = a.id));");
		return list;
	}
	
}
