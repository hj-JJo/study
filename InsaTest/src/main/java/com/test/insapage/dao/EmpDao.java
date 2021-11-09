package com.test.insapage.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


import com.test.insapage.vo.Employee;
import com.test.insapage.vo.InsaCom;


public class EmpDao {
	
	private Connection conn;
	private PreparedStatement pstmt;	
	private ResultSet rs;

	public ArrayList<InsaCom> comLsit() {
		
		String sqlcomList = "select * from insa_com";
		ArrayList<InsaCom> comList = null;
		
		try{			
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sqlcomList);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				comList = new ArrayList<InsaCom>();
				
				do {					
					InsaCom ic = new InsaCom();
					ic.setGubun(rs.getString("GUBUN"));
					ic.setCode(rs.getString("CODE"));
					ic.setName(rs.getString("NAME"));
					ic.setNote(rs.getString("NOTE"));

					
					comList.add(ic);
					
					System.out.println("ic : " + ic.getCode());

					
					
				} while(rs.next());
			}
		} catch(Exception e) {			
			e.printStackTrace();
			
		} finally {			
			DBManager.close(conn, pstmt, rs);
		}
		return comList;
	}

	public void insertEmp(Employee emp) {
				
			String sqlInsert = "insert into insa(sabun, id, pwd) values(INSA_SQ.nextval,?,?)";
			
			try {			
				conn = DBManager.getConnection();
				pstmt = conn.prepareStatement(sqlInsert);
				pstmt.setString(1, emp.getId());
				pstmt.setString(2, emp.getPwd());			
				pstmt.executeUpdate();
				
			} catch(Exception e) {
				e.printStackTrace();			
			} finally {			
				DBManager.close(conn, pstmt, rs);
			
		}
		
	}
	

}
