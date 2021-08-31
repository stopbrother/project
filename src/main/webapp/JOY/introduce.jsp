<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1,maximum-scale=1,user-scalable=no">
    <meta charset="UTF-8">
    <script src="../js/jquery.min.js"></script>
    <script src="../js/toggle.min.js"></script>
    <script src="http://code.jquery-1.7.js" type="text/javascript"></script>
    <script src="../js/send.js"></script>
    <title>나 혼자 요리! - 소개</title>
    <link rel="stylesheet" href="../css/int.css">
    <link rel="stylesheet" href="../css/base.css">
    </head>
    <script type="text/javascript">
    function logout(){
		alert('로그아웃이 완료되었습니다.')
	}
    </script>
<body>
<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
	userID = (String) session.getAttribute("userID");
}
%>
   <div id="wrap">
    <!--gnb 영역 -->
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
                    <img src="../img/add.png" alt="레시피작성">
                </a>
            </li>
            <li>
                <a href="../user/login.html">
                    <img src="../img/user_pc.png" alt="로그인">
                </a>
            </li>
            <li>
                <a href="../board/bss.jsp">
                    <img src="../img/add_pc.png" alt="레시피작성">
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
                <a href="main.jsp">홈</a>
                </li>
                <li>
                <a href="introduce.jsp" class="active">소개</a>
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


    <!-- 컨텐츠 영역 -->
    <div class="container">
                <h1>회사 소개</h1>
      <!-- Featured Project Row -->
      <div class="con_1">
        <div class="con_1_img">
          <img src="../img/logos.png"alt="">
        </div>
        <div class="con_1_txt">
            <h4> Background of Establishment </h4>
            <hr color="#BDBDBD">
            <p> 요즘 밥을 혼자 먹는 사람이 늘고 있다. '혼밥'은 대부분 배달이나 밖에서 제공되지만, 부모로부터 안전하고 뜨거운 식사를 떠올리면 쉽고 맛있게 만들 수 있는 조리법을 게시해 요리를 잘 못하는 사람들을 도울 수 있다. </p>
          </div>
        </div>
      <!-- Project One Row -->
      <div class="con_2">
        <div class="con_2_img">
          <img src="../img/introduce/2.jpg" alt="">
        </div>
        <div class="con_2_txt">
                <h4>Let's Cooking</h4>
                <hr color="#BDBDBD">
                <p>평소 요리를 못하던 여러분도, 집 밥이 그리웠던 당신들도 모두 쉽게 할 수 있습니다. 우리가 알고있는 요리 생각보다 그렇게 어렵진 않습니다. 도전해보세요.</p>
            </div>
        </div>
        <div class="con_3">
        <div class="con_3_img">
          <img src="../img/introduce/3.jpg" alt="">
        </div>
          <div class="con_3_txt">
                <h4>Mountains</h4>
                <hr color="#BDBDBD">
                <p>각 설명이 포함된 프로젝트의 또 다른 예. 이 섹션도 반응적으로 잘 작동하므로, 이 테마를 작은 화면에서 사용해 보세요!</p>
          </div>
       </div>
    </div>
    <!-- 푸터 영역 -->
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