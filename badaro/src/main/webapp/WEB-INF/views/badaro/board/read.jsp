<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/board/css2.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/board/jquery-ui.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/board/reset.css?after">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/board/boardList.css?after">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/board/style_main.css?after1">
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/board/jquery-ui.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/board/jquery.min.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board/post.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board/style_main.css">
</head>
<body>
    <div id="wrap">
        <header id="header">
            <div class="headerIn">
                <h1 class="logo"><a href="/badaro/main/index">바다로</a></h1>
                <div class="member">
                    <p class="join"><a href="">마이페이지</a></p>
                    <p class="login"><a href="">로그아웃</a></p>
                </div>
            </div><!--.headerIn-->
        </header><!--#header-->
        <div class="gnb">
            <div class="aside">
                <ul>
                    <li><a href="">동해</a></li>
                    <li><a href="">menu2</a></li>
                    <li><a href="">menu3</a></li>
                    <li><a href="">menu4</a></li>
                    <li><a href="">menu5</a></li>
                </ul>
                <button><img src="img/btn_open.png" alt=""></button>
            </div>
        </div> <!--.gnb-->
        <div id="container">
            <div class="row1"></div>
            <div class="text">
                <div class="row2">
                    <div class="title">
                        <p>${read.p_title}</p>
                    </div>
                    <div class="form-group" hidden>
						<label for="name">작성자</label>
						<input class="form-control" id="p_user" name="p_user" value="${read.p_user}" readonly>
						<label for="name">조회수</label>
						<input class="form-control" id="p_count" name="p_count" value="${read.p_count}" readonly>
					</div>
	                <div class="r1btns">
	                	<p class="change"><a href="/badaro/board/modify?p_turn=${read.p_turn}">수정</a></p>
	                    <p class="delete"><a href="/badaro/board/remove?p_turn=${read.p_turn}">삭제</a></p>
	               	</div>


                </div> <!--.row2-->
    
                <div class="row3">
                    <div class="memo">
                        <form action="">
                            <p class="m1">${read.p_content}</p>
                        </form>
                    </div>
                </div> <!--.row3-->
    
                <div class="row4">
                    <div class="comment">
                        <div class="cBox">
                            <form action="">
                                <p><textarea style="resize: none;" name="c_comment" id="c_comment" placeholder="댓글"></textarea></p>
                            </form>
                        </div>
                        <p class="cBtn"><a href="#">댓글입력</a></p>
                    </div>
                </div> <!--.row4-->
            </div>
        </div> <!--c-->
        <footer id="footer">
            <div class="footerIn">
                Footer
            </div>
        </footer><!--#footer-->
    </div> <!--#wrap-->
    <script src="${pageContext.request.contextPath}/resources/js/board/script_main.js"></script>
</body>
</html>