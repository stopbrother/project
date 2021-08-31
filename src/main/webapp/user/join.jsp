<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width"; initial-scale="1">
<link rel="stylesheet" href="../css/base.css">
    <link rel="stylesheet" href="../css/Join.css">

<title>회원가입</title>
<script type="text/javascript">

function passwordCheck() {
	var userPassword = $('#userPassword').val();
	var userPassword1 = $('#userPassword1').val();
	if(userPassword != userPassword1) {
		$('#passwordCheckMessage').html('비밀번호가 서로 일치하지 않습니다.');
	} else {
		$('#passwordCheckMessage').html('');
	}
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
	<div id= "wrap">
        <section class= "head">
            <a href="../JOY/main.jsp">
                <img src="../img/login/logo_logo.png">
            </a>
        </section>
	<div class="join_container">
	<h1>회원가입 </h1>
		<div class="join">
				<form method="post" action="joinAction.jsp">
					<div class="id">
						<input type="text" class="idtxt" placeholder="아이디" name="userID" maxlength="20">
					</div>
					<div class="pw">
						<input type="password" class="pwtxt" placeholder="비밀번호" id="userPassword" name="userPassword" onkeyup="passwordCheck();" maxlength="20">
						<input type="password" class="pwtxt" placeholder="비밀번호확인" id="userPassword1" name="userPassword1" onkeyup="passwordCheck();" maxlength="20">
					</div>
					<div class="name">
						<input type="text" class="nametxt" placeholder="이름" name="userName" maxlength="20">
					</div>
					<div class="e-mail">
						<input type="email" class="e-mailtxt" placeholder="이메일" name="userEmail" maxlength="50">
					</div>
					<button type= "submit" class= "join_btn"> 회원가입 </button>
					<h5 style="color: red;" id="passwordCheckMessage"></h5>
				</form>
		</div>
		
	</div>
	<footer>
        <div class="foot">
            <p>
            &copy;Copyright 2019. J.O.Y All Right Reserved.
            </p>
        </div>
    </footer>
      <div class= "foot2">
          <img src="../img/footlogo.png">
      </div>  
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>