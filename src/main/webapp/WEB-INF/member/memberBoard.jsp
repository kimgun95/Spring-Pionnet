<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>MemberJoinProc</title>
</head>

<link rel="stylesheet" type="text/css" href="/css/ui.jqgrid.css"/>
<link rel="stylesheet" type="text/css" href="/css/jquery-ui.css"/>
<link rel="stylesheet" type="text/css" href="/css/ui.multiselect.css"/>

<script src="/js/jquery.js" type="text/javascript"></script>
<!-- <script src="/js/jquery.jqGrid" type="text/javascript"></script> -->
<script src="/js/i18n/grid.locale-kr.js" type="text/javascript"></script>
<script src="/js/jquery.jqGrid.min.js" type="text/javascript"></script>

<body>

	<table id="list"></table>
	<div id="pager"></div>
	<div id="parent">
		<div style="float: left; width: 30%;">
			<div>
				<select id="selectBox">
					<option value="BASIC">일반</option>
					<option value="ADMIN">관리자</option>
					<option value="ALL">전체</option>
				</select>
			</div>
			<input type="button" id="filterButton" name="search" value="filter" />
		</div>
	</div>

</body>

<script type="text/javascript">
	jQuery("#list").jqGrid({
		url:'/member/list',
		datatype: "json",
		colNames:['아이디','이름', '성별', '생년월일', '이메일', '전화번호','주소','등급'],
		colModel:[
			{name:'id',index:'id', width:55},
			{name:'name',index:'name', width:90},
			{name:'gender',index:'name asc, invdate', width:100},
			{name:'birth',index:'birth', width:80, align:"center"},
			{name:'email',index:'email', width:80, align:"center"},
			{name:'phone',index:'phone', width:80, align:"center"},
			{name:'address',index:'address', width:80, align:"center"},
			{name:'grade',index:'grade', width:80, align:"center"}
		],
		rowNum:10,
		rowList:[10,20,30],
		pager: '#pager',
		sortname: 'id',
		viewrecords: true,
		sortorder: "desc",
		loadonce: false,
		caption:"회원 리스트"
	}).navGrid('#pager',{edit:false,add:false,del:false,search:true});

	// $('#filterButton').click(function (event) {
	// 	event.preventDefault();
	// 	filterGrid();
	// });
	//
	// function filterGrid() {
	//
	// }
</script>

</html>