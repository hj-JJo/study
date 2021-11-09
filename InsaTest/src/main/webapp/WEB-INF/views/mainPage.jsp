<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style>

body{
   margin-top: 2em;
   background-color: black;

}

#backD{
    width: 100%;
    min-height: 50em;
    background-color: black;

}

.conD{
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);

}

p label{
    font-size: 1em;
    color: white;
}

input#inputBt, input#viewBt{
    width: 4em;
    height: 2em;
    border: 1px solid gray;
    background-color:white;
    font-weight: bold;
    border-radius : 0.3em;
}

a{
    font-size: 9pt;
    color : gray;
}

.aw{
    font-size: 9pt;
    color: white;
}

</style>


<article>

    <div id='backD'>
        <div class="conD">
            <h3 style="color: white;">인사관리 시스템</h3>
            <p>
                <label for="inputBt">인사 정보를 입력하겠습니다.</label>
                <input type="button"  id="inputBt" value="입력" onclick="javascript:window.location.href='writeForm.ic'">
            </p>
            <p>
                <label for="viewBt">인사 정보를 조회하겠습니다.</label>
                <input type="button"  id="viewBt" value= "조회" onclick="javascript:window.location.href='empList.ic'">
            </p>
        </div>
    </div>
</article>



