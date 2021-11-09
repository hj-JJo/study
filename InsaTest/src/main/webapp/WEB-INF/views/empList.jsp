<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<article>
    <div id='backD'>

        <div class='conD'>
            <div>
                <div style="float: left;"> 
                    <h2>직원 리스트</h2> 
                </div>       
            </div>
            
            <br><br>
            
            <hr style="width: 100%;">
            
            <div> 
                <table class="insaTable">
                      
                    
                    <tr class="insaTr">
                        <td class="titleTd">
                            사번	
                        </td>
                        <td class="inputTextTd">
                            <input type="text" id="사번 바뿨야함 - 미정" readonly/>
                        </td>
                        <td class="titleTd">
                            한글성명
                        </td>

                        <td class="inputTextTd">
                            <input type="text" id="korNameInput" />
                        </td>
                        <td class="titleTd">
                            입사구분
                        </td>
                        <td class="inputSelectTd">
                            <select>
                                <option>신입</option>
                                <option>경력</option>
                                <option>계약</option>
                            </select>
                        </td>
                        <td class="titleTd">
                            투입여부
                    </td>
                    <td class="inputSelectTd">
                        <select>
                            <option value="Y" >투입</option>
                            <option value="N">미투입</option>
                        </select>
                    </td>

                    </tr>
                    <tr class="insaTr">
                        <td class="titleTd">
                            직위
                        </td>
                        <td class="inputSelectTd">
                            <select>
                                <option selected>&nbsp;</option>
                                <option >대표</option>
                                <option >이사</option>
                                <option >부장</option>
                                <option >차장</option>
                                <option >과장</option>
                                <option >대리</option>
                                <option >주임</option>
                                <option >사원</option>
                            </select>
                        </td>
                        <td class="titleTd">
                            입사일자
                        </td>
                        <td class="inputDateTd">
                            <input type="date" />
                        </td>
                        <td class="titleTd">
                            퇴사일자
                        </td>
                        <td class="inputDateTd">
                            <input type="date" />
                        </td>
                        <td class="titleTd">
                            직종분류
                        </td>
                        <td class="inputSelectTd">
                            <select id="selectTdJob"> 
                                <option>기획사무</option>
                                <option>총무인사</option>
                                <option>생산품질관리</option>
                                <option>영업관리</option>
                            </select>
                        </td>
                    
                    </tr>             
                </table>
            </div>

            <div style="float: right; margin-top:2em; margin-bottom: 2em;"> 
                <input class="conTopBt" type="button" value="검색" >
                <input class="conTopBt" type="button" value="초기화" >
                <input class="conTopBt" type="button" value="이전" >    
            </div>

            <br><br>

            <div>
                <table class="listTable">
                    <tr class ="listTr">
                        <th>사번</th>
                        <th>성명</th>
                        <th>주민번호</th>
                        <th>핸드폰번호</th>
                        <th>직위</th>
                        <th>입사일자</th>
                        <th>퇴사일자</th>
                        <th>투입여부</th>
                        <th>연봉</th>
                    </tr>

                    <tr class ="listTr" style="text-align: center;">
                        <td colspan="9">test</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</article>



