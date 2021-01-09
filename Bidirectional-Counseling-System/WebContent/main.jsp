<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" import="spms.vo.*"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name = "viewport" content="text/html; charset=UTF-8"> <%--반응형 메타 --%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>E&G</title>

<link rel="stylesheet" href="css/main.css"> 

</head>
<body>
<div class="wrapper">
	<!-- 이 코드만 달면 알아서 상단바 생김   , 상단바 수정시  header.jsp 파일만 수정하면 됨  -->
	<jsp:include page="header.jsp" />

  <section id="home" class="sec-main">
    <h1 class="main-heading">Bidirectional Counseling System</h1>
  </section>

  <section id="about" class="sec-about">
    <div class="container">
      <h1>About me</h1>

      <hr />

      <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
          <h3>'Bidirectional Counseling System(이하 BCS)'는 누구나 자신이 원하는 목표를 통해 성공적인 자기개발을 해나갈 수 있도록 지원하는 경력개발 툴입니다. 또한, BCS은 성공적인 삶을 위한 자기개발과 경력개발에 관심이 많은 사람들 간 소통과 유익한 정보 교류 등 사회 관계망 서비스를 지원합니다.</h3>
          <br>
          <br>
          <h3>BCS과 함께 목표를 세우고 꾸준히 실천해 나간다면 머지않아 당신의 삶에 기적과도 같은 변화가 찾아올 것입니다. MML은 원하는 목표를 이루어가는 당신의 멋진 미래와 함께합니다. </h3>
            <!--  <a href="#">English</a> or <a href="#">Czech</a> version. If you want to hire me or just to talk, <a class="js-connect" href="#footer">connect</a> with me.</p> -->
        </div>
      </div>
    </div>
  </section>
  <section id="services" class="sec-services">
    <div class="container">
      <h1>Services</h1>

      <hr />

      <div class="row">
        <div class="col-sm-4">
          <i class="fa fa-4x fa-paint-brush"></i>

          <h2 class="h3">Matching</h2>

          <p>튜터와 튜티의 매칭</p>
        </div>

        <div class="col-sm-4">
          <i class="fa fa-4x fa-code"></i>

          <h2 class="h3">Support</h2>

          <p>개인 일정 및 목표 달성지원</p>
        </div>

        <div class="col-sm-4">
          <i class="fa fa-4x fa-tablet"></i>

          <h2 class="h3">Manage</h2>

          <p>디테일한 경럭 설정 및 관리</p>
        </div>
      </div>
    </div>
  </section>

  <section id="folio" class="sec-folio">
    <div class="container">
      <h1>분야 모음</h1>

      <hr />

      <div class="row">
        <div class="col-md-4">
          <img class="center-block" src="https://source.unsplash.com/Oog0wehKxYs/450x450" alt="By Håkon Sataøen" />
        </div>

        <div class="col-md-4">
          <img class="center-block" src="https://source.unsplash.com/EfpOiZvPbT4/450x450" alt="By Samuel Zeller" />
        </div>

        <div class="col-md-4">
          <img class="center-block" src="https://source.unsplash.com/2aoVQXwLf3g/450x450" alt="By Scott Webb" />
        </div>
      </div>

      <div class="row">
        <div class="col-md-4">
          <img class="center-block" src="https://source.unsplash.com/o2KD7JtqTlk/450x450" alt="By Has Bonk" />
        </div>

        <div class="col-md-4">
          <img class="center-block" src="https://source.unsplash.com/TV2ET43jK0w/450x450" alt="By Scott Webb" />
        </div>

        <div class="col-md-4">
          <img class="center-block" src="https://source.unsplash.com/lZ2LB1s_z7s/450x450" alt="By Daniel Lozano Valdés" />
        </div>
      </div>

      <div class="row">
        <div class="col-md-4">
          <img class="center-block" src="https://source.unsplash.com/o4qL4FuwN6I/450x450" alt="By Anthony DELANOIX" />
        </div>

        <div class="col-md-4">
          <img class="center-block" src="https://source.unsplash.com/ej7RYC0ED_c/450x450" alt="By Patrick Pilz" />
        </div>

        <div class="col-md-4">
          <img class="center-block" src="https://source.unsplash.com/0G1r-Cg0zS8/450x450" alt="By Vita Vilcina" />
        </div>
      </div>
    </div>
  </section>

  <section id="testimonials" class="sec-testimonials">
    <div class="container">
      <h1>Clients said</h1>

      <hr />

      <div class="row">
        <div class="col-sm-4">
          <p class="text-center">"BCS를 사용하면서 내가 부족한 부분을 알 수 있어서 좋았습니다."</p>

          <p class="text-right">&mdash; 손흥민씨</p>
        </div>

        <div class="col-sm-4">
          <p class="text-center">"일정관리와 목표를 설정하는데 도움이 많이 되었습니다."</p>

          <p class="text-right">&mdash; 박지성씨</p>
        </div>

        <div class="col-sm-4">
          <p class="text-center">"튜티로써 튜터의 조언을 받을 수 있어서 꿈에 좀더 가까워 진 느낌이 들어요"</p>

          <p class="text-right">&mdash; 이강인씨</p>
        </div>
      </div>
    </div>
  </section>

  <section id="contact" class="sec-contact">
    <div class="container">
      <h1>문의 사항</h1>

      <hr />

      <div class="row">
        <div class="col-sm-4 col-sm-offset-4">
          <form class="center-block" action="#" method="post">
            <div class="form-group">
              <label class="sr-only" for="inputName">Full name</label>

              <input id="inputName" class="form-control" type="text" placeholder="김태성" required />
            </div>

            <div class="form-group">
              <label for="inputMail" class="sr-only">Email Address</label>

              <input id="inputMail" class="form-control" type="email" placeholder="rock@mail.com" required />
            </div>

            <div class="form-group">
              <label for="inputMessage" class="sr-only">Your Message</label>

              <textarea id="inputMessage" class="form-control" name="message" cols="30" rows="8" required></textarea>
            </div>

            <div class="form-group">
              <button class="btn btn-default center-block" type="submit" value="Hire me">문의</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>
</div>
<script src="js/bootstrap.js"></script>
<script src="js/navigationBar.js"></script>
<script type="text/javascript">
$(function() {
	  $('.js-nav a, .js-connect').click(function(e) {
	    e.preventDefault();
	    $('body, html').animate({
	      scrollTop: $($.attr(this, 'href')).offset().top
	    }, 750);
	  });
	});
</script>
</body>
</html>