<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="com.example.demo.dto.MemberResponse" %>
<% request.setCharacterEncoding("utf-8"); %>
	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>MemberJoinFrom</title>
<% %>
<style>
        .container{
            margin-left:auto; 
            margin-right:auto;
            text-align:center;
        }
        table{
            margin-left:auto; 
            margin-right:auto;
            border:3px solid #87ceeb;
        }

        td{
            border:1px solid #87ceeb;
        }
    </style>
</head>
<body>	
	<%	
		MemberResponse mb = (MemberResponse)request.getAttribute("member");	
	%>
	
	
	<div class="container">
        <br><br>
        <b><font size="5" color="gray">회원가입 정보를 확인하세요.</font></b>
        <br><br>
        <font color="blue"><%= mb.getName()  %></font>님 가입을 축하드립니다.
        <br><br>
        <table>
            <tr>
                <td >아이디</td>
                <td><%= mb.getId() %></td>
            </tr>
            <tr>
                <td >비밀번호</td>
                <td><%= mb.getPassword() %></td>
            </tr>     
            <tr>
                <td >이름</td>
                <td><%= mb.getName()  %></td>
            </tr>
            <tr>
                <td >성별</td>
                <td><%= mb.getGender() %></td>
            </tr>                    
            <tr>
                <td >생일</td>
                <td>
                    <%= mb.getBirth()  %>
                </td>
            </tr>
            <tr>
                <td >이메일</td>
                <td>
                    <%= mb.getEmail()  %>
                </td>
            </tr>
            <tr>
                <td >휴대전화</td>
                <td><%= mb.getPhone()  %></td>
            </tr>
            <tr>
                <td >주소</td>
                <td>
                    <%= mb.getAddress()  %>
                </td>
            </tr>
        </table>
        <br>
        <input type="button" onclick="access()" value="확인"/>
    </div>
    
    <script>
    	function access() {
    		location.href = "/member/board";
    	}
    </script>
</body>
</html>