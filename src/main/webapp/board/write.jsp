<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1,maximum-scale=1,user-scalable=no">
<script src="../js/jquery.min.js"></script>
<script src="../js/toggle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="../js/bootstrap.js"></script>
<link rel="stylesheet" href="../css/boardwite.css">
<link rel="stylesheet" href="../css/index.css">
<link rel="stylesheet" href="../css/base.css">
<title>나 혼자 요리! - 게시물 작성</title>
<script type="text/javascript">
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
	%>
	<div id="wrap">
		<div class="gnb">
			<div class="gnb_top">
					<h1>
						<a href="../JOY/main.jsp">
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
						<a href="../user/login.jsp">
							<img src="../img/user_pc.png" alt="로그인">
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
                	<a href="../JOY/main.jsp">홈</a>
                </li>
                <li>
                	<a href="../JOY/introduce.jsp">소개</a>
                </li>
                <li>
                	<a href="../file/recipe.jsp">레시피</a>
                </li>
                <li>
                	<a href="bss.jsp" class="active">게시판</a>
                </li>
            </ul>
        </nav>
        <span class="toggle_btn">전체메뉴 토글버튼</span>
        </div>
    
    <div class="sec-space">
           <h1>게시판 작성</h1>
           <p>사용자 여러분들을 위한 게시판입니다.</p>           
           <section class="sec add-bor">
              <form method="post" action="writeAction.jsp">
               <div class="brd-write-wrap">                   
                       <div class="brd-write-sepe">
                          
                           <fieldset>
                               <table class="brd-write">
                                   <caption></caption>
                                   <colgroup>
                                       <col class="column-size01">
                                   <col>
                                   </colgroup>
                                   <tbody>
                                       <tr>
                                           <th scope="col">
                                               <label class="inq" for="title" style="margin-top: 20px;">
                                                   제목
                                               </label>
                                           </th>
                                           <td>
                                               <input type="text" class="wid-all" id="n_title" name="bssTitle" style="margin-top: 20px;" value>                                              
                                           </td>
                                       </tr>
                                    
                                       <tr>
                                           <th scope="col" width="10%">
                                               <label class="inq" for="title">
                                                   내용
                                               </label>
                                           </th>
                                           <td>
                                               <textarea name="bssContent" id="n-content" rows="10" cols="150" style="width: 100%; height: 400px;"></textarea>                                              
                                               <iframe frameborder="0" scrolling="no" style="width: 100%; height: 100px;">
                                                   <html lang="ko">
                                                       <body style="margin: 0px;">
                                                           <span id="rev"></span>
                                                           <div id="smart_editor2" style="width: 702px;">
                                                               <div id="smart_editor2_content">
                                                                   <div class="se2_input_area_container" style="width: 700px; height: 400px;">
                                                                       <iframe id="se2_iframe" name="se2_iframe" class="se2_input_wysiwyg" width="400" height="300" frameborder="0" style="display: block; height: 400px;">
                                                                           <html lang="ko">
                                                                               <body class="se2_inputarea" style="height: 370px;" contenteditable="true">
                                                                                   
                                                                               </body>
                                                                           </html>
                                                                       </iframe>
                                                                       <textarea name rows="10" cols="100" class="se2_input_syntax se2_input_htmlsrc" style="display: none; outline-style: none; resize: none; height: 400px;">
                                                                       
                                                                       
                                                                       </textarea>
                                                                       <textarea name rows="10" cols="100" class="se2_input_syntax se2_input_text" style="display: none; outline-style: none; resize: none; height: 400px;"></textarea>
                                                                   </div>
                                                               </div>
                                                           </div>
                                                       </body>
                                                   </html>
                                               </iframe>
                                               
                                           </td>
                                       </tr>
                                   </tbody>
                               </table>
                               
                           </fieldset>
                       </div>
                   
               </div>
               <div class="btn-set">
               <input type="submit" class="button" id="setBt" value="등록">
               <input type="button" class="button" id="setBt" value="취소" onclick="location.href='bss.jsp'">                                     
               </div>
           </section>
           </form>
       </div> 
       <footer>
       <div class="footer_logo">
           <img src="../img/login/logo_logo.png">
       </div>
        <div class="foot_m">
            <a href="https://www.instagram.com"><img src="../img/instagram.png"></a>
            <a href="http://www.youtube.com"><img src="../img/youtube.png"></a>
            <a href="http://www.facebook.com"><img src="../img/facebook.png"></a>
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