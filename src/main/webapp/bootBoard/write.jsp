<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="function"  uri="http://java.sun.com/jsp/jstl/functions"%>   
<!DOCTYPE html PUBLIC >
<html>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function() {
	$("i#save").click(function() {
		if($("input[name='subject']").val().length==0||
			$("input[name='name']").val().length==0||
			$("input[name='pw']").val().length==0){
				alert('dataCheck');
			$("input[lang='ui']").each(function() {
				this.value='';
			});
			return false;
		}else{
			$("form").submit();
		}
	});
});
</script>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Start Simple Web</title>

<!-- Bootstrap Core CSS -->
<link href="/web/bootBoard/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="/web/bootBoard/css/clean-blog.css" rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href='http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<style type="text/css">
p {
	margin: 10px;
}

.pagination {
	display: block;
	text-align: center;
	font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
}

.pagination>li>a {
	color: #404040;
	float: none;
}

.pagination>.active>a, .pagination>.active>a:hover, .pagination>.active>a:focus
	{
	z-index: 3;
	color: #fff;
	cursor: default;
	background-color: #404040;
	border-color: #404040;
}

.pagination>li>a:hover, .pagination>li>a:focus {
	z-index: 3;
	color: black;
	cursor: default;
	background-color: white;
	border-color: #404040;
}

.glyphicon {
	margin-left: 10px
}

.board-category {
	font-size: 12px;
	color: #404040;
	margin: 5px;
	margin-left: 20px
}

.board-field {
	margin-bottom: 30px
}

.btn {
	display: inline-block;
	padding: 6px 12px;
	margin-bottom: 0px;
	font-size: 14px;
	font-weight: 400;
	line-height: 1.4285;
	text-align: right;
	white-space: nowrap;
	vertical-align: middle;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	background-image: none;
	border: 1px solid transparent;
	border-radius: 4px;
}

.btn-primary {
	background-color: #3b3b3b;
	border-color: #282828;
	background-color: #3b3b3b;
}

.btn-primary:hover, .btn-primary:focus, .btn-primary:active,
	.btn-primary.active, .open .dropdown-toggle.btn-primary {
	background-color: #282828;
	border-color: #080808;
}

.btn-primary:hover, .btn-primary:focus, .btn-primary:active,
	.btn-primary.active, .open>.dropdown-toggle.btn-primary {
	color: #fff;
	background-color: gray;
	border-color: gray;
}

.btn-sm, .btn-group-sm>.btn {
	text-align: center;
	padding: 13px 13px;
	font-size: 14px;
	line-height: 1.5;
	/*     border-radius: 3px; */
	border-top: 35px;
	padding: 13px 13px;
}

#write-field {
	padding: 0 0 30px 0;
	font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
}

#write-field table {
	width: 100%;
	border: 0;
	border-spacing: 0;
}

#write-field td {
	padding: 8px 0 8px 0;
}

#write-field .td1 {
	width: 70px;
	min-height: 30px;
	font-weight: bold;
	color: #666;
	vertical-align: middle;
}

#write-field .td1.vtop {
	vertical-align: top;
	padding-top: 10px
}

#write-field .td2 input[type="text"], input[type="password"] {
	height: 28px;
	padding: 3px;
	display: inline-block;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
}

#write-field .input-title {
	float: left;
	color: #666;
	font-weight: bold;
	line-height: 30px;
	vertical-align: middle;
	width: 70px;
	margin: 4px 0 4px 0;
}

#write-field .input-forms {
	margin: 4px 0 4px 0;
	overflow: hidden;
}

#write-field .input-name {
	height: 28px;
}

#write-field .input-pwd {
	height: 28px;
}

#write-field .td2 .more {
	width: 85%;
}

#write-field .td2 select {
	min-width: 155px;
	max-width: 250px;
	height: 28px;
	padding: 2px;
	margin: 0;
}

#write-field .td2 .guide {
	font-size: 90%;
	font-family: dotum;
	color: #999;
	padding: 3px 0 10px 0;
}

#write-field .td2 .guide img {
	position: relative;
	top: -1px;
}

#write-field .td2 .check-label {
	color: #666;
}

#write-field .td2 .after {
	padding: 10px 0 0 0;
	color: #999;
	font-family: dotum;
}

#write-field .td2 .after input {
	position: relative;
	top: 1px;
}

#write-field .editbox {
	padding: 15px 0 15px 0;
}

#write-field .iconbox {
	border-left: #e0e0e0 solid 1px;
	border-top: #e0e0e0 solid 1px;
	border-right: #e0e0e0 solid 1px;
	background: #f9f9f9;
	padding: 6px 0 8px 7px;
}

#write-field .iconbox a {
	padding: 0 3px 0 3px;
	font-family: dotum;
	color: #333;
}

#write-field .iconbox a:hover {
	color: #7899C7;
}

#write-field .iconbox a img {
	position: relative;
	top: -1px;
	margin-right: 3px;
}

#write-field .iconbox .split {
	padding: 0 2px 0 2px;
	margin-bottom: -1px;
}

#write-field .bottombox {
	text-align: center;
	padding: 20px 0 20px 0;
	margin: 15px 0 0 0;
	border-top: #efefef solid 1px;
}

#write-field .bottombox .btngray {
	font-weight: bold;
	width: 60px;
	height: 25px;
}

#write-field .bottombox .btnblue {
	font-weight: bold;
	width: 80px;
	height: 25px;
}
</style>
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>


	<!-- Page Header -->
	<!-- Set your background image for this header on the line below. -->
	<header class="intro-header"
		style="background-image: url('img/about-bg.jpg'); height: 200px">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
					<div class="site-heading"
						style="margin-top: 10px; padding-top: 35px; padding-bottom: 35px">
						<h2>SAMPLE</h2>
						<span class="subheading">BULLETIN BOARD</span>
					</div>
				</div>
			</div>
		</div>
	</header>
	<c:choose>
		<c:when test="${job eq modify}">
		<form action="/web/bootUpdate.do" name="iForm" method="POST" enctype="multipart/form-data">
	<div id="write-field">
		<div class="col-md-3"></div>
		<div class="col-md-6">
			<table>
				<tr>
					<td class="td1">카테고리</td>
					<td class="td2"><select name="category" class="form-control"
						style="display: inline-block;">
							<option value="">&nbsp;+ 선택해주세요</option>
							<option value="">----------------------</option>
							<option value="카테고리1">ㆍ카테고리1(15)</option>
							<option value="카테고리2">ㆍ카테고리2(3)</option>
							<option value="카테고리3">ㆍ카테고리3(0)</option>
					</select></td>
				</tr>

				<tr>
					<td class="td2" colspan="2">
					<input type="hidden" name="id" value="${info.id }">
					<input type="hidden" name="no" value="${info.no }">
					<input type="hidden" name="fileName" value="${info.fileName }">
						<div class="row row-xs-bskr">
							<div class="col-md-6 col-sm-6 col-xs-bskr">
								<div class="input-title">작성자명</div>
								<div class="input-forms">
									<input size="20" type="text" name="name" lang="ui" value="${info.id }"
										class="form-control input-sm input-name bskr-font user" />
								</div>
							</div>
							<div class="col-md-6 col-sm-6 col-xs-bskr">
								<div class="input-title">비밀번호</div>
								<div class="input-forms">
								
									<input size="20" type="password" name="pw" lang="ui" value=""
										class="form-control input-sm input-pwd bskr-font user" />
								</div>
							</div>
						</div>
					</td>
				</tr>


				<tr>
					<td class="td1">제목</td>
					<td class="td2" valign="middle"><input type="text"
						name="subject" lang="ui" value="${info.subject }"
						class="form-control input-sm bskr-font subject" /></td>
				</tr>


			</table>
			<div class="form-group">
				<table>
					<tr>
						<td class="td1"></td>
						<td calss="td2"><textarea class="form-control col-sm-5"
								rows="20" name="contents">${info.contents }</textarea></td>
					</tr>
					<tr>
					<td class="td1"></td>
						<td class="td2"><input type="file" id="InputFile" name="file"></td>
					</tr>
				</table>
			</div>

			<div class="bottombox">
				<input type="button" value="취소" class="btn btn-default btn-sm"
					onclick="return cancelCheck();" />&nbsp;
				<button id="submitPost" type="submit" class="btn btn-primary btn-sm">
					<i class="glyphicon glyphicon-ok" id="save"></i> 확인
				</button>
			</div>
		</div>
	</div>
	</form>
		</c:when>
		<c:otherwise>
		<form action="/web/bootInsert.do" name="iForm" method="POST" enctype="multipart/form-data">
	<div id="write-field">
		<div class="col-md-3"></div>
		<div class="col-md-6">
			<table>
				<tr>
					<td class="td1">카테고리</td>
					<td class="td2"><select name="category" class="form-control"
						style="display: inline-block;">
							<option value="">&nbsp;+ 선택해주세요</option>
							<option value="">----------------------</option>
							<option value="카테고리1">ㆍ카테고리1(15)</option>
							<option value="카테고리2">ㆍ카테고리2(3)</option>
							<option value="카테고리3">ㆍ카테고리3(0)</option>
					</select></td>
				</tr>

				<tr>
					<td class="td2" colspan="2">
					<input type="hidden" name="id" value="${id }">
						<div class="row row-xs-bskr">
							<div class="col-md-6 col-sm-6 col-xs-bskr">
								<div class="input-title">작성자명</div>
								<div class="input-forms">
									<input size="20" type="text" name="name" lang="ui" value="${id }"
										class="form-control input-sm input-name bskr-font user" />
								</div>
							</div>
							<div class="col-md-6 col-sm-6 col-xs-bskr">
								<div class="input-title">비밀번호</div>
								<div class="input-forms">
								
									<input size="20" type="password" name="pw" lang="ui" value=""
										class="form-control input-sm input-pwd bskr-font user" />
								</div>
							</div>
						</div>
					</td>
				</tr>


				<tr>
					<td class="td1">제목</td>
					<td class="td2" valign="middle"><input type="text"
						name="subject" lang="ui" value=""
						class="form-control input-sm bskr-font subject" /></td>
				</tr>


			</table>
			<div class="form-group">
				<table>
					<tr>
						<td class="td1"></td>
						<td calss="td2"><textarea class="form-control col-sm-5"
								rows="20" name="contents"></textarea></td>
					</tr>
					<tr>
					<td class="td1"></td>
						<td class="td2"><input type="file" id="InputFile" name="file"></td>
					</tr>
				</table>
			</div>

			<div class="bottombox">
				<input type="button" value="취소" class="btn btn-default btn-sm"
					onclick="return cancelCheck();" />&nbsp;
				<button id="submitPost" type="submit" class="btn btn-primary btn-sm">
					<i class="glyphicon glyphicon-ok" id="save"></i> 확인
				</button>
			</div>
		</div>
	</div>
	</form>
		</c:otherwise>
	</c:choose>
	<!-- Footer -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
					<ul class="list-inline text-center">
						<li><a href="#"> <span class="fa-stack fa-lg"> <i
									class="fa fa-circle fa-stack-2x"></i> <i
									class="fa fa-envelope-o fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
						<li><a href="#"> <span class="fa-stack fa-lg"> <i
									class="fa fa-circle fa-stack-2x"></i> <i
									class="fa fa-home fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
						<li><a href="#"> <span class="fa-stack fa-lg"> <i
									class="fa fa-circle fa-stack-2x"></i> <i
									class="fa fa-github fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
					</ul>
					<p class="copyright text-muted">Copyright &copy;2016 SIST. All
						rights reserved | code by milib</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="js/clean-blog.min.js"></script>

</body>

</html>
