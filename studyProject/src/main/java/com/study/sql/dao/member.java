package com.study.sql.dao;

import java.util.ArrayList;

import com.study.sql.dto.memberinfo;

public interface member {
	
	public ArrayList<memberinfo> memberlist();
	public void memberjoin(String member_id, String member_pw);
}