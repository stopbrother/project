<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 자바 클래스 Import  -->
<%@ page import = "board.*" %>
<%@ page import = "java.util.ArrayList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" href="../css/bootstrap.css" type="text/css" media="screen" />
	<title>자유게시판</title>
	<style type="text/css">
		a, a:hover {
			color: #000000;
			text-decoration: none;
		}
	</style>

	<script type="text/javascript">
		function editcheck(boardID) {
		
			// get방식
			// document.location.href="addr_control.jsp?action=edit&id="+id;
			
			// post방식
			document.form1.action.value="edit";
			document.form1.boardID.value=boardID;
			document.form1.submit();
	
			
		}
	</script>

</head>

<%
	// request 내장객체에서 accountTransferList를 get하여 클래스 변수에 저장
	ArrayList boardList = (ArrayList)request.getAttribute("boardList");

%>


<body>
	<div align=center>
	<H2>게시판 조회</H2>
	<HR>
	<a href="boardControl.jsp?action=add">게시판 등록</a><BR>
	
	<!-- 게시판 목록 조회폼 -->
	<form name="form1" method="post" action="boardControl.jsp">
		<input type="hidden" name="action" value="list">
		<input type="hidden" name="boardID" value=0>
	
		<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
			<tr>
				<th style="background-color: #eeeeee; text-align: center;">번호</th>
				<th style="background-color: #eeeeee; text-align: center;">제목</th>
				<th style="background-color: #eeeeee; text-align: center;">작성자</th>
				<th style="background-color: #eeeeee; text-align: center;">작성일</th>
			</tr>
			<%
				if(boardList != null) {
					
						// boardList 변수 List 반복처리
						for(BoardDTO boardDTO : (ArrayList<BoardDTO>) boardList) {
			%>
						<tr>
							<td><a href="javascript:editcheck(<%=boardDTO.getBoardID() %>)"><%=boardDTO.getBoardID() %></a></td>
			<%
				if((boardDTO.getBoardTitle()).equals("notice")) {			
			%>
							<td>○</td>			
			<%
				} else {
			%>
							<td>└</td>			
			<%
				} 
			%>
							<td><%=boardDTO.getUserID() %></td>
							<td><%=boardDTO.getBoardTitle() %></td>
							<td><%=boardDTO.getBoardContent() %></td>
							
						</tr>
			<%	
					}
				}
			%>
			</table>
		</form>
	</div>
</body>

</html>