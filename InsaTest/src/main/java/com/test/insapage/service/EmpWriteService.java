package com.test.insapage.service;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.test.insapage.dao.EmpDao;
import com.test.insapage.vo.Employee;

public class EmpWriteService {
	
	public String requestProcess(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {


	String uploadDir = (String) request.getServletContext().getAttribute("uploadDir");
	String realPath = request.getServletContext().getRealPath(uploadDir);		
	int maxFileSize = 100 * 1024 * 1024;
	String encoding = "UTF-8"; 
		

	MultipartRequest multi = new MultipartRequest(request, realPath, 
						maxFileSize, encoding, new DefaultFileRenamePolicy());	
		 
	

	String id = multi.getParameter("id");
	String pwd = multi.getParameter("pwd");


	

	Employee emp = new Employee();
	emp.setId(id);
	emp.setPwd(pwd);
		

	/* String fileName = multi.getFilesystemName("carImg");

	emp.setCarImg(fileName != null ? fileName : null);
	
	if(emp.getCarImg() == null) {		
		System.out.println("파일업로드안됨");		
	}	*/
	
	EmpDao dao = new EmpDao();
	dao.insertEmp(emp);

	return "views/writeFormPage";		
}
}
