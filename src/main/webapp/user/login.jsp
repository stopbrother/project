<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1,maximum-scale=1,user-scalable=no">

<link rel="stylesheet" href="../css/login.css">
<link rel="stylesheet" href="../css/base.css">
<title>나 혼자 요리! - 로그인</title>
</head>
<body>
	<% 
		String userID = null;
		if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("root");
	}
	%>
		<div id="wrap">
        <section class="head">
            <a href="../JOY/main.jsp">
                <img src="../img/login/logo_logo.png">
            </a>
        </section>
            
	<div class="login_container">
		<h1>로그인 </h1>
			<div class="login">
				<form method="post" action="loginAction.jsp">
					<div class="id">
						<input type="text" class="idtxt" placeholder="아이디" name="userID">
					</div>
					<div class="pw">
						<input type="password" class="pwtxt" placeholder="비밀번호" name="userPassword">
					</div>
					<button type="submit" class="login_btn">로그인</button>
					<hr width="100%" color="#3399cc">
				</form>
				
		</div>
		<div class="join_btn">
			<a href="join.jsp">회원가입</a>
		</div>
	</div>
	<footer>
            <div class="foot">
                <p>
                &copy;Copyright 2019. J.O.Y All Right Reserved.
                </p>
            </div>
        </footer>
          <div class="foot2">
        <img src="../img/footlogo.png">
    </div>
	</div>
</body>
</html>