<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- boostrap5 라이브러리-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

<!-- jQuery 라이브러리 -->
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous">

<link rel="stylesheet" type="text/css"
	href="/assets/css/adminRecipeBoard.css">

<style type="text/css">
#wrap {
	width: 100%;
}

#center {
	width: 85%;
	height: 850px;
	float: right;
}

#titleForm {
	height: 100px;
	width: 980px;
	margin: 0 auto;
}

#contentForm {
	height: 500px;
	width: 980px;
	margin: 0 auto;
}

#commitForm {
	height: 50px;
	width: 980px;
	margin: 0 auto;
}

#notice {
	height: 100px;
	width: 500px;
	margin: 0 auto;
}

* {
	font-family: 'Noto Sans KR', sans-serif;
}

div {
	box-sizing: border-box;
}

#header {
	width: 85%;
	height: 50px;
	float: right;
}

#navigation {
	width: 15%;
	height: 950px;
	float: left;
	position: fixed
}

#content {
	width: 980px;
	float: right;
}

#footer {
	width: 85%;
	height: 50px;
	float: right;
}
</style>

<title>냉장고를 부탁해 공지사항 게시판</title>
</head>
<body>

	<form action="/notice/noticeWrite.do" method="post">
		<div id="warp">
			<div id="header"></div>
			<div id="navigation">
				<%@include file="/views/common/adminNavigation.jsp"%>
			</div>
			<br>

			<div id="center">
				<div id="notice" align="center"">
					<h1>| NOTICE |</h1>
					<span>새로운 소식들과 유용한 정보들을 한곳에서 확인하세요.</span>
				</div>
				<br>

				<div id="titleForm">
					<h3>글 제목</h3>
					<input type="text" class="form-control" name="title" /><br>
				</div>
				<br>

				<div id="contentForm">
					<h3>글 내용</h3>
					<textarea rows="15" cols="50" class="form-control" name="content"
						style="resize: none;"></textarea>
					<br>
				</div>
				<br>

				<div id="commitForm" align="right">
					<input class="btn btn-success btn-sm" type="submit" value="글 쓰기">
					<input class="btn btn-success btn-sm" type="reset" value="초기화">
					<input class="btn btn-success btn-sm" type="button" value="메인으로"
						onclick="location='/customerServiceCenter/noticeAdmin.do'">
				</div>
			</div>
			<div id="footer"></div>
		</div>
	</form>

</body>
</html>