package com.test.insapage.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.insapage.service.EmpDeleteService;
import com.test.insapage.service.EmpInquireService;
import com.test.insapage.service.EmpListService;
import com.test.insapage.service.EmpUpdateFormService;
import com.test.insapage.service.EmpUpdateService;
import com.test.insapage.service.EmpWriteFormService;
import com.test.insapage.service.EmpWriteService;



@WebServlet(name="insaController", urlPatterns="*.ic",
initParams=@WebInitParam(name="uploadDir", value="upload"))
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private final String PREFIX = "/WEB-INF/index.jsp?body=";
	private final String SUFFIX = ".jsp";

	@Override
	public void init() throws ServletException {
	
	
		String uploadDir = getInitParameter("uploadDir");
		String realPath = getServletContext().getRealPath(uploadDir);		
		File parentFile = new File(realPath);
		
		if(! (parentFile.exists() && parentFile.isDirectory())) {
			parentFile.mkdir();
		}
		
		
		getServletContext().setAttribute("uploadDir", uploadDir);
		getServletContext().setAttribute("parentFile", parentFile);
		
	}
	
	
	protected void doGet(
		HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {		
	doProcess(request, response);
	}
	
	
	protected void doPost(
		HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
	request.setCharacterEncoding("utf-8");
	doProcess(request, response);
	}


	protected void doProcess(
		HttpServletRequest request, HttpServletResponse response) 
				throws ServletException, IOException {
	
	
	String requestURI = request.getRequestURI();
	String contextPath = request.getContextPath();
	System.out.println("uri : " + requestURI + ", ctxPath : " + contextPath);
	

	String command = requestURI.substring(contextPath.length());
	System.out.println("command : " + command);
	String viewPage = null;

	if(command.equals("/index.ic")
			 || command.equals("/*.ic")) {
		viewPage = "views/mainPage";
		
	} else if(command.equals("/empList.ic")) {
		EmpListService list = new EmpListService();
		viewPage = list.requestProcess(request, response);
		
	} else if(command.equals("/empInquire.ic")) {
		EmpInquireService service = new EmpInquireService();
		viewPage = service.requestProcess(request, response);
		
	} else if (command.equals("/writeForm.ic")) {
		EmpWriteFormService service = new EmpWriteFormService();
		viewPage = service.requestProcess(request, response);
		
	} else if(command.equals("/writeProcess.ic")) {
		EmpWriteService service = new EmpWriteService();
		viewPage = service.requestProcess(request, response);
		
	} else if(command.equals("/updateForm.ic")) {	
		EmpUpdateFormService service = new EmpUpdateFormService();
		viewPage = service.requestProcess(request, response);
		
	} else if(command.equals("/updateProcess.ic")) {
		EmpUpdateService service = new EmpUpdateService();
		viewPage = service.requestProcess(request, response);
		
	} else if(command.equals("/deleteProcess.ic")) {
		EmpDeleteService service = new EmpDeleteService();
		viewPage = service.requestProcess(request, response);			
	}
	

		if(viewPage != null) {
			

			String view = viewPage.split(":")[0];
			System.out.println("view : " + view);
			
			if(view.equals("r") || view.equals("redirect")) {
				response.sendRedirect(viewPage.split(":")[1]);
				
			} else {
				RequestDispatcher rd = 
						request.getRequestDispatcher(PREFIX + view + SUFFIX);	
				rd.forward(request, response);
			}
		}		
	}
}
