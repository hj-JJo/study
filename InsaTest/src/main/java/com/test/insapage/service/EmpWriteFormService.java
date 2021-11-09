package com.test.insapage.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.insapage.dao.EmpDao;
import com.test.insapage.vo.InsaCom;

public class EmpWriteFormService {

	public String requestProcess(HttpServletRequest request, HttpServletResponse response) {
		ArrayList<InsaCom> comList = null;
		EmpDao dao = new EmpDao();
		
		
		comList = dao.comLsit();
		
		
		request.setAttribute("comList", comList);
		
		
		return "views/writeFormPage";
	}
}
