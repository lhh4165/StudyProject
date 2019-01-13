package com.study.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.study.sql.dao.member;
import com.study.sql.dto.memberinfo;


@Controller
public class HomeController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="main.do", method =RequestMethod.GET)
	public String main(HttpServletRequest req, Model m) {
		
		member mem = sqlSession.getMapper(member.class);
		ArrayList<memberinfo> infoaddAttribute = mem.memberlist();
				
		m.addAttribute("info", infoaddAttribute);
		return "main/Main";
	}
	
	
	@RequestMapping("member/join.do")
	public String memberjoin(HttpServletRequest request, Model model, memberinfo mem) {
		member dao = sqlSession.getMapper(member.class);
		dao.memberjoin(mem.getMember_id(),mem.getMember_pw());
		return "redirect:/main.do";
	}
}