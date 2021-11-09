<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<article>

  <div id='backD'>

        <div class='conD'>
        
        
         <form name="writeForm" action="writeProcess.ic" id="writeForm" method="post" enctype="multipart/form-data">   
            <div>
                
                <div style="float: left;"> 
                    <h2>직원 상세 정보</h2> 
                </div>
                <div style="float: right; margin-top:2em;"> 
                    <input class="conTopBt" type="submit" value="등록" >
                    <input class="conTopBt" type="button" value="전화면" >
                    
                </div>
                
            </div>
            <br><br>
            <hr style="width: 100%;">
            <div>
            
           
            
                <table class="insaTable">
                    
                    <tr class="insaTr">
                        <td colspan="2" rowspan="5" class="imgTd">
                            <img src="http://placehold.it/200x200" alt="Books2U" width="200" height="200" />
                        </td>
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
                            영문성명
                        </td>

                        <td class="inputTextTd">
                            <input type="text" id="engNameInput" />
                        </td>

                    </tr>
                    
                    <tr class="insaTr">
                        <td class="titleTd">
                            아이디	
                        </td>
                        <td class="inputTextTd">
                            <input type="text" id="id" />
                        </td>
                        <td class="titleTd">
                            패스워드
                        </td>
                        <td class="inputTextTd">
                            <input type="password" class="passwordInput" id=pwd/>
                        </td>
                        <td class="titleTd">
                            패스워드 확인
                        </td>
                        <td  class="inputTextTd">
                            <input type="password" class="passwordInput" id="pwdCk" />
                        </td>
                        
                    </tr>
                    
                    <tr class="insaTr">
                    
                        <td class="titleTd">
                            전화번호
                        </td>
                        <td class="inputTextTd">
                            <input type="text" id="phonenumber" />
                        </td>
                        
                        <td class="titleTd">
                            핸드폰 번호
                        </td>
                        <td class="inputTextTd">
                            <input type="text" id="email1" />
                            
                        </td>
                        <td class="titleTd" >
                            주민번호					
                        </td>
                        <td class="inputTextTd" >
                            <input type="text" id="ininin" />	
                        </td>
                    
                    </tr>
                    
                    
                    <tr class="insaTr">
                    
                        <td class="titleTd">
                            연령
                        </td>
                        <td class="inputTextTd">
                            <input type="text" id="age" />
                        </td>
                        <td class="titleTd">
                                이메일
                            </td>
                            <td class="inputSelectTd">
                                <input class="inputTextTd" type="text" id="email1" 
                                    style="width: 10em; height: 2em;"/>
                                    
                                
                                <select class="inputSelectTd"
                                    style="width: 9em; min-height: 2em;">
                                   
                                    <c:forEach var="c" items="${ comList }" varStatus="status">
                                    	<c:if test="${c.gubun == '1004' }">	
                                    		<option>${c.name}</option>
                                    	</c:if>
                                    </c:forEach>
                                	
                                </select>
                                
                            </td>



 
                            <td class="inputSelectTd" colspan="2" >
                            <div class="tdSubSelDiv"style="width: 55%; margin: 0; float: left; " >
                                    <label class ="tLabel" for="selectTdJob">직종분류</label>
                                    <select id="selectTdJob"style="width: 9.5em; height: 2.5em;"> 
                                    <c:forEach var="c" items="${ comList }" varStatus="status">
                                    	<c:if test="${c.gubun == '1002' }">	
                                    		<option>${c.name}</option>
                                    	</c:if>
                                    </c:forEach>
                                    </select>
                                </div>
                                <div class="tdSubSelDiv" style="width: 45%; float: right;">
                                    <label class ="tLabel" for="selectTdGender" >성별</label>
                                    <select id="selectTdGender"style="width: 9em; height: 2.5em;"> 
                                    <c:forEach var="c" items="${ comList }" varStatus="status">
                                    	<c:if test="${c.gubun == '1003' }">	
                                    		<option>${c.name}</option>
                                    	</c:if>
                                    </c:forEach>
                                    </select>
                                </div>

                            </td>
                        
                    </tr>
                    
                    
                    <tr class="insaTr">
                    
                        <td class="titleTd">
                            주소 
                        </td>
                        <td class="inputTextTd">
                            <input type="text" id="postNum" placeholder="우편번호" 
                                    style="width: 10em;"/>
                            <input class="tableInBt"type="button" id="addBt" value="주소검색" 
                                    style="width: 8em; height: 2em; font-weight: normal; border:1px solid #C0C0C0;"/>
                        </td>
                
                        <td class="inputTextTd" colspan="2">
                            <input type="text" id="address1" name="address1" placeholder="주소"
                                    style="width: 27.5em;">	
                        </td>
                        <td class="inputTextTd" colspan="2">
                            <input type="text" id="address1" name="address1" placeholder="세부주소"
                                    style="width: 27.5em;">	
                        </td>

                    </tr>
                    
                    
                    <tr class="insaTr">
                    <td colspan="2" class="inputPicBtTd">
                            <input class="tableInBt" type="button" id="imageUploadBtn" value="사진올리기">
                        </td>
                        <td class="titleTd">
                            직위
                        </td>
                        <td class="inputSelectTd">
                        		<select>
                        
                                    <c:forEach var="c" items="${ comList }" varStatus="status">
                                    	<c:if test="${c.gubun == '1001' }">	
                                    		<option>${c.name}</option>
                                    	</c:if>
                                    </c:forEach>
                                </select>
                        </td>
                        <td class="titleTd">
                                부서
                            </td>
                            <td class="inputSelectTd">
                                <select>
                                    <c:forEach var="c" items="${ comList }" varStatus="status">
                                    	<c:if test="${c.gubun == '1004' }">	
                                    		<option>${c.name}</option>
                                    	</c:if>
                                    </c:forEach>
                                </select>
                            </td>
                            <td class="titleTd">
                                연봉(만원)
                            </td>
                            <td class="inputTextTd">
                                <input type="text" id="salary" placeholder="(만원)" />
                            </td>

                    </tr>

                    
                    <tr class="insaTr">
                    <td class="titleTd">
                            입사구분
                        </td>
                        <td class="inputSelectTd">
                            <select>
                                    <c:forEach var="c" items="${ comList }" varStatus="status">
                                    	<c:if test="${c.gubun == '1008' }">	
                                    		<option>${c.name}</option>
                                    	</c:if>
                                    </c:forEach>
                            </select>
                        </td>
                        <td class="titleTd">
                            등급
                        </td>
                        <td class="inputSelectTd">
                            <select>
                                    <c:forEach var="c" items="${ comList }" varStatus="status">
                                    	<c:if test="${c.gubun == '1005' }">	
                                    		<option>${c.name}</option>
                                    	</c:if>
                                    </c:forEach>
                            </select>
                        </td>
                        <td class="titleTd">
                                투입여부
                        </td>
                        <td class="inputSelectTd">
                            <select>
                               <c:forEach var="c" items="${ comList }" varStatus="status">
                                  	<c:if test="${c.gubun == '1006' }">	
                                  		<option>${c.name}</option>
                                  	</c:if>
                               </c:forEach>
                            </select>
                        </td>
                        <td class="titleTd">
                            군필여부
                        </td>
                        <td class="inputSelectTd">
                            <select>
                                    <c:forEach var="c" items="${ comList }" varStatus="status">
                                    	<c:if test="${c.gubun == '1007' }">	
                                    		<option>${c.name}</option>
                                    	</c:if>
                                    </c:forEach>
                            </select>			
                        </td>

                    </tr>
                    <tr class="insaTr">
                        <td class="titleTd">
                            군별
                        </td>
                        <td class="inputSelectTd">
                            <select>
                                    <c:forEach var="c" items="${ comList }" varStatus="status">
                                    	<c:if test="${c.gubun == '1009' }">	
                                    		<option>${c.name}</option>
                                    	</c:if>
                                    </c:forEach>
                            </select>
                        </td>
                        <td class="titleTd">
                            계급
                        </td>
                        <td class="inputSelectTd">
                            <select>
                                    <c:forEach var="c" items="${ comList }" varStatus="status">
                                    	<c:if test="${c.gubun == '1010' }">	
                                    		<option>${c.name}</option>
                                    	</c:if>
                                    </c:forEach>
                            </select>
                        </td>
                        <td class="titleTd">
                            입영일자
                        </td>
                        <!-- date type datepicker로 변경하기1!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
                        <td class="inputDateTd">
                            <input type="date" />
                        </td>
                        <td class="titleTd">
                            전역일자
                        </td>
                        <td class="inputDateTd">
                            <input type="date" />
                        </td>
                    
                    </tr>
                    
                    
                    <tr class="insaTr">
                    <td class="titleTd">
                            KOSA등록
                        </td>
                        <td class="inputSelectTd">
                            <select>
                                <option>Y</option>
                                <option>N</option>
                            </select>
                        </td>
                        <td class="titleTd">
                            KOSA등급
                        </td>
                        <td class="inputSelectTd">
                            <select>
                                <option>(선택)</option>
                                <option>초급기술자</option>
                                <option>중급기술자</option>
                                <option>고급기술자</option>
                                <option>초급기능사</option>
                                <option>중급기능사</option>
                                <option>고급기능사</option>
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
                        
                    </tr>
                    
                    
                    <tr class="insaTr">
                    <td class="titleTd">
                            사업자번호
                        </td>
                        <td class="inputTextTd">
                            <input type="text" />
                        </td>
                        <td class="titleTd">
                            업체명
                        </td>
                        <td class="inputTextTd">
                            <input type="text" id="CompName" />
                        </td>
                        <td class="titleTd">
                                사업자등록
                            </td>
                            <td class="inputTextTd">
                                <input type="text" readonly />
                            </td>
                            <td class="inputBtTd" colspan="2">
                                <input class="tableInBt" type="button" id="imagesPreviewButton" value="미리보기"/>
                                <input class="tableInBt" type="button" id="imagesSubmitButton" value="등록"/>
                            </td>
                        
                    </tr>
                    
                    
                    <tr class="insaTr">
                        <td class="titleTd">
                            자기소개
                        </td>
                        <td colspan="3" class="inputTextBoxTd">
                            <textarea>100 자 내외로 적으시오</textarea>
                        </td>
                        <td class="titleTd" style="padding-bottom: 2em;">
                            이력서
                        </td>
                        <td class="inputTextTd"  style="padding-bottom: 2em;">
                            <input type="text" readonly />
                        </td>
                        <td class="inputBtTd" colspan="2"  style="padding-bottom: 2em;">
                            <input class="tableInBt" type="button" id="imagesPreviewButton" value="미리보기"/>
                            <input class="tableInBt" type="button" id="imagesSubmitButton" value="파일 업로드"/>
                        </td>
                        
                        
                    </tr>
                </table>
                
                
    
            </div>
            </form>
        </div>
        
    </div>

</article>



