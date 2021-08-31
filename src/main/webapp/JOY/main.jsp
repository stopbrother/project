<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="file.FileDAO" %>
<%@ page import="file.FileDTO" %>
<%@ page import="bss.BssDAO" %>
<%@ page import="bss.Bss" %>
<% request.setCharacterEncoding("UTF-8"); %>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1,maximum-scale=1,user-scalable=no">
    <meta charset="UTF-8">
    <script src="../js/jquery.min.js"></script>
    <script src="../js/toggle.min.js"></script>
    <script src="http://code.jquery-1.7.js" type="text/javascript"></script>
    <script src="../js/send.js"></script>
    <title>나 혼자 요리!</title>
    <link rel="stylesheet" href="../css/index.css">
        <link rel="stylesheet" href="../css/base.css">
 <style>
 	.box h4{
 		font-weight: bold;
 	}
 </style>       
<script type="text/javascript">
	function detailcheck(foodNum){
		document.form1.action.value="detail";
		document.form1.foodNum.value=foodNum;
		document.form1.submit();
	}
	function customer(){
		alert('개발중인 컨텐츠입니다.');
	}
	function logout(){
		alert('로그아웃이 완료되었습니다.')
	}
</script>
</head>
<body>
<% 
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
		
		
    	FileDAO dao = new FileDAO();
    	ArrayList<FileDTO> recipeList = dao.getSelectFood();
   

%>
	<div id="wrap">
		<div class="gnb">
			<div class="gnb_top">
					<h1>
						<a href="main.jsp">
							<img src="../img/logo_1.png" alt="로고">
						</a>
					</h1>
				<%
					if(userID == null) {
				%>
				<ul class="gnb_right">
					<li>
						<a href="../user/login.jsp">
							<img src="../img/user.png" alt="로그인">
						</a>
					</li>
					 <li>
                		<a href="../board/bss.jsp">
                    		<img src="../img/add.png" alt="게시글작성">
                		</a>
            		</li>            	
            		<li>
						<a href="../user/login.jsp">
							<img src="../img/user_pc.png" alt="로그인">
						</a>
					</li>
					 <li>
              			<a href="../board/bss.jsp">
                    		<img src="../img/add_pc.png" alt="게시글작성">
               		 	</a>
            		</li>
        		</ul>
        		
        		<%
					} else {
				%>				
        		<ul class="gnb_right">
					<li>
						<a href="../user/logoutAction.jsp" onclick="javascript:logout()">
							<img src="../img/user_M.png" alt="로그아웃">
						</a>
					</li>
					 <li>
                		<a href="../board/bss.jsp">
                    		<img src="../img/add.png" alt="게시글작성">
                		</a>
            		</li>            		          	
            		<li>
						<a href="../user/logoutAction.jsp" onclick="javascript:logout()">
							<img src="../img/userin_pc.png" alt="로그아웃">
						</a>
					</li>
					 <li>
              			<a href="../board/bss.jsp">
                    		<img src="../img/add_pc.png" alt="게시글작성">
               		 	</a>
            		</li>
        		</ul>
        		<div class="dd">
        		<h2>${userID}님 환영합니다.</h2>
        		</div>
        		<%
					}
        		%>
        		</div>
        		
				
				
        	

        <nav> 
            <ul class="gnb_nav_bar">
                <li>
                	<a href="../JOY/main.jsp"  class="active">홈</a>
                </li>
                <li>
                	<a href="introduce.jsp">소개</a>
                </li>
                <li>
                	<a href="../file/recipe.jsp">레시피</a>
                </li>
                <li>
                	<a href="../board/bss.jsp">게시판</a>
                </li>
            </ul>
        </nav>
        <span class="toggle_btn">전체메뉴 토글버튼</span>
        </div>
        
    
     
	 <div class="contets">
        <div class="banner">
            <img src="../img/banner.png">
        </div>
        
        <div class="con_1">
        	<form name="form1" method="post" action="/JOY/file/FileController">
     		<input type="hidden" name="action" value="list">
     		<input type="hidden" name="foodNum" value=0>
            <div class="con_title">
            <h3>
               	최신 메뉴
            </h3>
            <div class="bogi">
                <a href="../file/recipe.jsp">더 보기</a>
            </div>
            </div>
           <div class="con_1_box">
	<div class="con">
	<%
		for(int i=0; i < recipeList.size(); i++){
			FileDTO dto = recipeList.get(i);
	%>	
		<div class="box">
		<a href="javascript:detailcheck(<%=dto.getFoodNum() %>)">
		<div class="box_img">
		<%=dto.getFileImg() %>
		</div>
		</a>
		<h4>
		<%=dto.getFileName() %>
		</h4>	
		</div>	
	<%
		}
	%>
	</div>
	</div>
	</form>
	</div>
        
        <div class="con_2_box">
        	<div class="con_2">
        	<div class="gesi">
        	<h3>게시판</h3>
        	<hr>

				<%	
					BssDAO bssDAO = new BssDAO();
					ArrayList<Bss> list = bssDAO.getSelectBss();
					for(int i=0; i < list.size(); i++){
						Bss bss = list.get(i);
				%>
				<ul>					
					<li><a href="../board/view.jsp?bssID=<%= bss.getBssID() %>"><%= bss.getBssTitle() %></a></li>
					<hr>													
				</ul>
				<%
				System.out.println(bss.getReadcnt());
					}
				%>
				<hr>
				</div>
				<div class="con_2_2">
					<h3>오늘의 요리 !</h3>
					<hr>
				<div class="con_2_cook">
					<div class="today_cook">
						<img src="../img/develop.jpg">						
					</div>
					<div class="cook_txt">
						<p>개발중인 컨텐츠입니다.</p>
					</div>
				</div>
        </div>
        <div class="foot_r">
        	<textarea id="send" name="cotxt" class="area" placeholder="나 혼자 요리에 전하고 싶은 의견이 있으신 분은 의견을 남겨주시기 바랍니다. 회원님들의 의견에 귀 기울이겠습니다."></textarea>
        	<div class="btn">
        		<button class="btn" onclick="javascript:customer()">보내기</button>
        	</div>
        </div>
    </div>
    </div>
    </div>
	 <footer>
        <div class="footer_logo">
           <img src="../img/login/logo_logo.png">
       </div>
        <div class="foot_m">
            <a href="#"><img src="../img/instagram.png"></a>
            <a href="#"><img src="../img/youtube.png"></a>
            <a href="#"><img src="../img/facebook.png"></a>
        </div>
          <div class="foot_l">
            <p>
             대표 : 정지형 / E : stopbro0323@naver.com / T : 010-3744-9840</p>
            <p>
            인천 동구 송림동 122-1 인천재능대학교 IT관 3층
            </p>
            <p>
            문의전화 이용시간 : (평일 10:00 ~ 18:00)
            </p>
            <p>
            서비스 이용문의 : 010-8021-3211    
            </p><br>
            <p>&copy;Coppyright 2019. J.O.Y All Rigit Reserved.</p>
        </div>
          <div class="foot2">
        <img src="../img/footlogo.png">
    </div>
    </footer>
    </div>
			
			
			
</body>
</html>