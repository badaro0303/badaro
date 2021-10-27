<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<%@include file ="header.jsp" %>

<div id="container">
	<div class="row1"></div>
	<div id="board_list_wrap">
		<div id="board_list_wrap_in">
			<div class="btns">
			<a href="/badaro/board/register"><input type="button" value="글작성"></a>
			</div>
                <table class="board_list">
                    <caption>게시판 목록</caption>
                    <thead>
                        <tr>
                            <th>번호</th>
                            <th>해수욕장</th>
                            <th>제목</th>
                            <th>별점</th>
                            <th>아이디</th>
                            <th>날짜</th>
                            <th>조회수</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="boardlist" items="${list}" >
                        <tr>
                            <td>${boardlist.p_turn}</td>
                            <td>${boardlist.p_beach}</td>
                            <td class="title"><a href="/badaro/board/read?p_turn=${boardlist.p_turn}">${boardlist.p_title}</a></td>
                            <td class="rating">★★★★★</td>
                            <td>${member.id}</td>
                            <td>${boardlist.p_date}</td>
                            <td>${boardlist.p_rating}</td>
                        </tr>
                       </c:forEach>
                    </tbody>
                </table>
                <div class="pager">
                    <a href="#" class="bt">첫 페이지</a>
                    <a href="#" class="bt">이전 페이지</a>
                    <a href="#" class="num on">1</a>
                    <a href="#" class="num">2</a>
                    <a href="#" class="num">3</a>
                    <a href="#" class="bt">다음 페이지</a>
                    <a href="#" class="bt">마지막 페이지</a>
                </div> 
            </div> <!--#board_list_wrap_in-->
		</div> <!--#board_list_wrap-->
		</div>

<%@include file ="footer.jsp" %>