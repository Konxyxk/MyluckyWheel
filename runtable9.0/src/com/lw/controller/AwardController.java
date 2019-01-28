package com.lw.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lw.entity.RuntableDomain;
import com.lw.service.RuntableService;
import com.lw.utils.awardsUtils;

/**
 * 
 * @author Administrator
 *
 */
@Controller
public class AwardController {

	/**  */
	@Autowired
	RuntableService runtableService;

	/**
	 * 
	 * @return
	 */
	//点击旋转
	@RequestMapping("/play")
	@ResponseBody
	public RuntableDomain run() {
		
		runtableService.updateStatus();
		
		// ff 
		List<RuntableDomain> list = runtableService.list();
		int awardValue = awardsUtils.generateAward(list);
		
		System.out.println(awardValue);
		// 为获奖奖品添加status 标识
		runtableService.status(awardValue);
		System.out.println(list);
		//获取属性电话号码
		String userphone = runtableService.getlist();
		System.out.println("获得电话号码："+userphone);
		
		//时间
		Date date = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String awardDate = df.format(date);
		System.out.println(awardDate);
		
		
		RuntableDomain award = runtableService.getAward();
		
		award.setUserphone(userphone);
		
		award.setAwardDate(awardDate);
		runtableService.addAward(award);
		System.out.println(award);
		
		return award;
	}
	
	//点击演示
	@RequestMapping("/setRecord")
	public String awardList(Model model) {

		// 获取商品信息
		List<RuntableDomain> table = runtableService.list();


		model.addAttribute("table", table);

		return "runtable";
	}

	//点击确认
	@ResponseBody
	@RequestMapping("/getRecord")
	public void getRecord(@RequestParam(value = "record", required = false) String[] record,
			@RequestParam(value = "recordValue", required = false) String[] recordValue) {
		// 获取中奖信息
    	runtableService.truncateTable();
		List<RuntableDomain> list = new LinkedList<RuntableDomain>();

		list = awardsUtils.genertateAwardList(record, recordValue);
		System.out.println(list);
		// 添加列表至数据库
		for (RuntableDomain runtableDomain : list) {
			System.out.println(runtableDomain);
			runtableService.add(runtableDomain);
		}
	}
	@ResponseBody
	@RequestMapping("/getPhone")
	public void getRecord(@RequestParam(value = "userphone", required = false) String userphone) {
		System.out.println(userphone);
		runtableService.updatePhone();
		System.out.println("ok");
		runtableService.addPhone(userphone);
	}

	@RequestMapping("/management")
	public String management() {
		return "lw_management";
	}

	@RequestMapping("/run")
	public String runtable() {
		return "runtable";
	}

}
