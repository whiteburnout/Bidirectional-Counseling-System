<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name = "viewport" content="text/html; charset=UTF-8"> <%--반응형 메타 --%>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<link rel="stylesheet" href="css/navtest.css">
<title>이앤지테크</title>
<script>
 <%--#구글로그인---------------%>
function onSignIn(googleUser) {
  var profile = googleUser.getBasicProfile();
  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
  console.log('Name: ' + profile.getName());
  console.log('Image URL: ' + profile.getImageUrl());
  console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
}
<%------------------------%>
</script>
<script>
function init(){
	gapi.load('auth2', function() {
	    console.log('auth2');
	    gapi,auth2.init()
	  });
}

</script>
</head>
<body>
<%--디자인 입히고 기능 구현이 일반적 --%>
	<nav class="navbar navbar-default navbar-fixed-top">
  <div class="navbar-header">
    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" 
    data-target="#bs-eample-navbar-collapse-1" aria-expanded="false">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
      <a href="main.jsp" class="navbar-brand">이앤지테크</a>
  </div>
		<div class="collapse navbar-collapse" id="bs-eample-navbar-collapse-1">
<ul  class="nav nav-pills navbar-right">
			<li>
        <a  href="main.jsp" >메인</a>
			</li>
			<li><a href="#2b" >Using nav-pills</a>
			</li>
			<li><a href="#3b" >Applying clearfix</a>
			</li>
  		<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role = "button" aria-haspopup="true"
					aria-expanded="false">고객센터</a>
				<ul class = "dropdown-menu">
					<li class ="active"><a href = "FAQ.jsp">FAQ</a></li>
					<li><a href = "Contact.jsp">CONTACT</a></li>
				</ul>
			</li>
		</ul>
			<ul class = "nav nav-pills navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role = "button" aria-haspopup="true"
					aria-expanded="false">접속하기</a>
				<ul class = "dropdown-menu">
					<li class="active"><a href = "login.jsp">로그인</a></li>
					<li><a href = "join.jsp">회원가입</a></li>
				</ul>
				
				</li>
			</ul>
		</div>
	</nav>
	<div class = "container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class = "jumbotron" style ="padding-top : 40px;">
				<form method ="post" action="loginAction.jsp">
					<h3 style = "text-align: center;">로그인 화면</h3>
					<div class="form-group">
						<input type="text" class = "form-control" placeholder="아이디" name="userID" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class = "form-control" placeholder="비밀 번호" name="userPassword" maxlength="20">
					</div>
					<input type ="submit" class = "btn btn-primary form-control" value="로그인">
				</form>
				 <!--#구글로그인 창-->
				<div class="g-signin2" data-onsuccess="onSignIn"></div>
				<!--#페이스북 창-->
				<div class="fb-login-button" data-max-rows="1" data-size="large" data-button-type="continue_with" data-show-faces="true" data-auto-logout-link="true" data-use-continue-as="true"></div>
			</div>
		</div>
	</div>
	<script src = "https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src = "js/bootstrap.js"></script>
	<script src = "js/navigationBar.js"></script>
	<!-- #구글인증  -->
	<script src="https://apis.google.com/js/platform.js" async defer></script>
	<!-- #구글 client_id 값 -->
  <meta name = "google-signin-client_id"content = "543733604530-vl2gm3mcmb9t37b828rdt8720ib75jh9.apps.googleusercontent.com">
  <script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>









<%-----페이스북 로그인 ------%>
<script>
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '1292756627564752',
      cookie     : true,
      xfbml      : true,
      version    : 'v4.0'
    });
      
    FB.AppEvents.logPageView();   
      
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "https://connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script>
<%----------------------%>














</body>
</html>