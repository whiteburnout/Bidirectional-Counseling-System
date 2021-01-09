<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Date"%>
<%@page import="spms.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<link rel="stylesheet" href="css/navtest.css">
<link rel="stylesheet" href="css/FAQ.css">
<link rel="stylesheet" href="css/Select.css">

<title>마이페이지 수정</title>
<style>
.container {
	padding: 100px;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="container">
		<form class="well form-horizontal"
			action="mypage_select?user_id=${userID.user_id}" method="post"
			id="contact_form">
			<fieldset>

				<!-- Form Name -->
				<div class="select-header">
					<legend>회원 정보 수정</legend>
				</div>
				<!-- Text input-->



				<!-- Select Basic -->

				<div class="form-group">
					<label class="col-md-4 control-label">최종학력</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-home"></i></span> <select id="productSelect"
								name="education" class="form-control selectpicker">
								<option value="${user.education}">${user.education}</option>
								<option value="초졸">초졸</option>
								<option value="중졸">중졸</option>
								<option value="고졸">고졸</option>
								<option value="대졸">대졸</option>
							</select>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">전공</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-book"></i></span> <select id="productSelect"
								name="major" class="form-control selectpicker">
								<option value="${user.major}">${user.major}</option>
								<option value="선택">선택</option>
								<option value="경영대학">경영대학</option>
								<option value="농업생명과학대학">농업생명과학대학</option>
								<option value="동물생명과학대학">동물생명과학대학</option>
								<option value="문화예술대학">문화예술대학</option>
								<option value="공과대학">공과대학</option>
								<option value="사범대학">사범대학</option>
								<option value="사회과학대학">사회과학대학</option>
								<option value="산림환경과학대학">산림환경과학대학</option>
								<option value="수의과대학">수의과대학</option>
								<option value="약학대학">약학대학</option>
								<option value="간호대학">간호대학</option>
								<option value="의생명과학대학">의생명과학대학</option>
								<option value="인문대학">인문대학</option>
								<option value="자연과학대학">자연과학대학</option>
								<option value="IT대학">IT대학</option>
							</select>
						</div>
					</div>
				</div>


				<div class="form-group">
					<label class="col-md-4 control-label">자격증1</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-book"></i></span> <select
								name="certification1" class="form-control selectpicker">
								<option value="${user.certification1}">${user.certification1}</option>
								<option value="선택">선택</option>
								<option value="기능사">기능사</option>
								<option value="기사">기사</option>
								<option value="산업기사">산업기사</option>
								<option value="기능장">기능장</option>
							</select>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">자격증2</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-book"></i></span> <select
								name="certification2" class="form-control selectpicker">
								<option value="${user.certification2}">${user.certification2}</option>
								<option value="선택">선택</option>
								<option value="기능사">기능사</option>
								<option value="기사">기사</option>
								<option value="산업기사">산업기사</option>
								<option value="기능장">기능장</option>
							</select>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">자격증3</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-book"></i></span> <select
								name="certification3" class="form-control selectpicker">
								<option value="${user.certification3}">${user.certification3}</option>
								<option value="선택">선택</option>
								<option value="기능사">기능사</option>
								<option value="기사">기사</option>
								<option value="산업기사">산업기사</option>
								<option value="기능장">기능장</option>
							</select>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">자격증4</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-book"></i></span> <select
								name="certification4" class="form-control selectpicker">
								<option value="${user.certification4}">${user.certification4}</option>
								<option value="선택">선택</option>
								<option value="기능사">기능사</option>
								<option value="기사">기사</option>
								<option value="산업기사">산업기사</option>
								<option value="기능장">기능장</option>
							</select>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">토익점수</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-pencil"></i></span> <select name="toeic"
								class="form-control selectpicker">
								<option value="${user.toeic}">${user.toeic}</option>
								<option value="100">100~199</option>
								<option value="200">200~299</option>
								<option value="300">300~399</option>
								<option value="400">400~499</option>
								<option value="500">500~599</option>
								<option value="600">600~699</option>
								<option value="700">700~799</option>
								<option value="800">800~899</option>
								<option value="900">900~990</option>


							</select>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">토플점수</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-pencil"></i></span> <select name="toefl"
								class="form-control selectpicker">
								<option value="${user.toefl}">${user.toefl}</option>
								<option value="10">10~19</option>
								<option value="20">20~29</option>
								<option value="30">30~39</option>
								<option value="40">40~49</option>
								<option value="50">50~59</option>
								<option value="60">60~69</option>
								<option value="70">70~79</option>
								<option value="80">80~89</option>
								<option value="90">90~99</option>
								<option value="100">100~109</option>
								<option value="110">110~119</option>
								<option value="120">120</option>

							</select>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">중국어등급</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-pencil"></i></span> <select name="hsk"
								class="form-control selectpicker">
								<option value="${user.hsk}">${user.hsk}</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>

							</select>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">일본어등급</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-pencil"></i></span> <select name="jlpt"
								class="form-control selectpicker">
								<option value="${user.jlpt}">${user.jlpt}</option>
								<option value="1">N1</option>
								<option value="2">N2</option>
								<option value="3">N3</option>
								<option value="4">N4</option>
								<option value="5">N5</option>

							</select>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">직무</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <select name="field"
								class="form-control selectpicker">
								<option value="${user.field}">${user.field}</option>
								<option value="사업관리">사업관리</option>
								<option value="경영.회계.사무">경영.회계.사무</option>
								<option value="금융.보험">금융.보험</option>
								<option value="교육.자연.사회과학">교육.자연.사회과학</option>
								<option value="법률.경찰.소방.교도.국방">법률.경찰.소방.교도.국방</option>
								<option value="보건.의료">보건.의료</option>
								<option value="사회복지.종교">사회복지.종교</option>
								<option value="문화.예술.디자인.방송">문화.예술.디자인.방송</option>
								<option value="운전.운송">운전.운송</option>
								<option value="영업판매">영업판매</option>
								<option value="경비.청소">경비.청소</option>
								<option value="이용.숙박.여행.오락.스포츠">이용.숙박.여행.오락.스포츠</option>
								<option value="음식서비스">음식서비스</option>
								<option value="건설">건설</option>
								<option value="기계">기계</option>
								<option value="재료">재료</option>
								<option value="화학">화학</option>
								<option value="섬유.의복">섬유.의복</option>
								<option value="전기.전자">전기.전자</option>
								<option value="정보통신">정보통신</option>
								<option value="식품가공">식품가공</option>
								<option value="인쇄.목제.가구.공예">인쇄.목제.가구.공예</option>
								<option value="환경.에너지.안전">환경.에너지.안전</option>
								<option value="농림어업">농림어업</option>

							</select>
						</div>
					</div>
				</div>


				<%
					User user;
					int year, month;
					user = (User) request.getAttribute("user");
					Date temp = user.getF_start();
					String a = temp + "";
					String array[] = a.split("-");
					user.setYear(Integer.parseInt(array[0])).setMonth(Integer.parseInt(array[1]));
				%>

				<div class="form-group">
					<label class="col-md-4 control-label">경력시작</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-time"></i></span> <select
								name="f_start_year" class="form-control selectpicker">
								<option value="${user.year}">${user.year}</option>
								<option value="1940">1940</option>
								<option value="1941">1941</option>
								<option value="1942">1942</option>
								<option value="1943">1943</option>
								<option value="1944">1944</option>
								<option value="1945">1945</option>
								<option value="1946">1946</option>
								<option value="1947">1947</option>
								<option value="1948">1948</option>
								<option value="1949">1949</option>
								<option value="1950">1950</option>
								<option value="1951">1951</option>
								<option value="1952">1952</option>
								<option value="1953">1953</option>
								<option value="1954">1954</option>
								<option value="1955">1955</option>
								<option value="1956">1956</option>
								<option value="1957">1957</option>
								<option value="1958">1958</option>
								<option value="1959">1959</option>
								<option value="1960">1960</option>
								<option value="1961">1961</option>
								<option value="1962">1962</option>
								<option value="1963">1963</option>
								<option value="1964">1964</option>
								<option value="1965">1965</option>
								<option value="1966">1966</option>
								<option value="1967">1967</option>
								<option value="1968">1968</option>
								<option value="1969">1969</option>
								<option value="1970">1970</option>
								<option value="1971">1971</option>
								<option value="1972">1972</option>
								<option value="1973">1973</option>
								<option value="1974">1974</option>
								<option value="1975">1975</option>
								<option value="1976">1976</option>
								<option value="1977">1977</option>
								<option value="1978">1978</option>
								<option value="1979">1979</option>
								<option value="1980">1980</option>
								<option value="1981">1981</option>
								<option value="1982">1982</option>
								<option value="1983">1983</option>
								<option value="1984">1984</option>
								<option value="1985">1985</option>
								<option value="1986">1986</option>
								<option value="1987">1987</option>
								<option value="1988">1988</option>
								<option value="1989">1989</option>
								<option value="1990">1990</option>
								<option value="1991">1991</option>
								<option value="1992">1992</option>
								<option value="1993">1993</option>
								<option value="1994">1994</option>
								<option value="1995">1995</option>
								<option value="1996">1996</option>
								<option value="1997">1997</option>
								<option value="1998">1998</option>
								<option value="1999">1999</option>
								<option value="2000">2000</option>
								<option value="2001">2001</option>
								<option value="2002">2002</option>
								<option value="2003">2003</option>
								<option value="2004">2004</option>
								<option value="2005">2005</option>
								<option value="2006">2006</option>
								<option value="2007">2007</option>
								<option value="2008">2008</option>
								<option value="2009">2009</option>
								<option value="2010">2010</option>
								<option value="2011">2011</option>
								<option value="2012">2012</option>
								<option value="2013">2013</option>
								<option value="2014">2014</option>
								<option value="2015">2015</option>
								<option value="2016">2016</option>
								<option value="2017">2017</option>
								<option value="2018">2018</option>




							</select> <select name="f_start_month" class="form-control selectpicker">
								<option value="${user.month}">${user.month}</option>
								<option value="01">1</option>
								<option value="02">2</option>
								<option value="03">3</option>
								<option value="04">4</option>
								<option value="05">5</option>
								<option value="06">6</option>
								<option value="07">7</option>
								<option value="08">8</option>
								<option value="09">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
							</select>
						</div>
					</div>
				</div>

				<%
					User user2;
					int year2, month2;
					user2 = (User) request.getAttribute("user");
					Date temp2 = user2.getF_end();
					String b = temp2 + "";
					String array2[] = b.split("-");
					user2.setYear2(Integer.parseInt(array2[0])).setMonth2(Integer.parseInt(array2[1]));
				%>

				<div class="form-group">
					<label class="col-md-4 control-label">경력끝</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-time"></i></span> <select name="f_end_year"
								class="form-control selectpicker">
								<option value="${user.year2}">${user.year2}</option>
								<option value="1940">1940</option>
								<option value="1941">1941</option>
								<option value="1942">1942</option>
								<option value="1943">1943</option>
								<option value="1944">1944</option>
								<option value="1945">1945</option>
								<option value="1946">1946</option>
								<option value="1947">1947</option>
								<option value="1948">1948</option>
								<option value="1949">1949</option>
								<option value="1950">1950</option>
								<option value="1951">1951</option>
								<option value="1952">1952</option>
								<option value="1953">1953</option>
								<option value="1954">1954</option>
								<option value="1955">1955</option>
								<option value="1956">1956</option>
								<option value="1957">1957</option>
								<option value="1958">1958</option>
								<option value="1959">1959</option>
								<option value="1960">1960</option>
								<option value="1961">1961</option>
								<option value="1962">1962</option>
								<option value="1963">1963</option>
								<option value="1964">1964</option>
								<option value="1965">1965</option>
								<option value="1966">1966</option>
								<option value="1967">1967</option>
								<option value="1968">1968</option>
								<option value="1969">1969</option>
								<option value="1970">1970</option>
								<option value="1971">1971</option>
								<option value="1972">1972</option>
								<option value="1973">1973</option>
								<option value="1974">1974</option>
								<option value="1975">1975</option>
								<option value="1976">1976</option>
								<option value="1977">1977</option>
								<option value="1978">1978</option>
								<option value="1979">1979</option>
								<option value="1980">1980</option>
								<option value="1981">1981</option>
								<option value="1982">1982</option>
								<option value="1983">1983</option>
								<option value="1984">1984</option>
								<option value="1985">1985</option>
								<option value="1986">1986</option>
								<option value="1987">1987</option>
								<option value="1988">1988</option>
								<option value="1989">1989</option>
								<option value="1990">1990</option>
								<option value="1991">1991</option>
								<option value="1992">1992</option>
								<option value="1993">1993</option>
								<option value="1994">1994</option>
								<option value="1995">1995</option>
								<option value="1996">1996</option>
								<option value="1997">1997</option>
								<option value="1998">1998</option>
								<option value="1999">1999</option>
								<option value="2000">2000</option>
								<option value="2001">2001</option>
								<option value="2002">2002</option>
								<option value="2003">2003</option>
								<option value="2004">2004</option>
								<option value="2005">2005</option>
								<option value="2006">2006</option>
								<option value="2007">2007</option>
								<option value="2008">2008</option>
								<option value="2009">2009</option>
								<option value="2010">2010</option>
								<option value="2011">2011</option>
								<option value="2012">2012</option>
								<option value="2013">2013</option>
								<option value="2014">2014</option>
								<option value="2015">2015</option>
								<option value="2016">2016</option>
								<option value="2017">2017</option>
								<option value="2018">2018</option>
								<option value="2019">2019</option>


							</select> <select name="f_end_month" class="form-control selectpicker">
								<option value="${user.month2}">${user.month2}</option>
								<option value="01">1</option>
								<option value="02">2</option>
								<option value="03">3</option>
								<option value="04">4</option>
								<option value="05">5</option>
								<option value="06">6</option>
								<option value="07">7</option>
								<option value="08">8</option>
								<option value="09">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
							</select>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">경력기간(0~10년)</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-time"></i></span> <select name="f_period"
								class="form-control selectpicker">
								<option value="${user.f_period}">${user.f_period}</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
							</select>
						</div>
					</div>
				</div>

				<form name="form">
					<div class="form-group">
						<label class="col-md-4 control-label">자기소개</label>
						<div class="col-md-4 inputGroupContainer">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-pencil"></i></span>
								<textarea rows="5" cols="40" class="form-control"
									name="introduction" onFocus="clearMessage(this.form);"
									onKeyUp="checkByte(this.form);">${user.introduction}</textarea>
							</div>
						</div>
					</div>
				</form>

				<!-- Button -->
				<div class="form-group">
					<label class="col-md-4 control-label"></label>
					<div class="col-md-4">
						<input type="submit" class="btn btn-primary form-control"
							value="저장하기">
					</div>
				</div>

			</fieldset>
		</form>
	</div>
	<!-- /.container -->
	<script>
		$(document)
				.ready(
						function() {
							$('#contact_form')
									.bootstrapValidator(
											{
												// To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
												feedbackIcons : {
													valid : 'glyphicon glyphicon-ok',
													invalid : 'glyphicon glyphicon-remove',
													validating : 'glyphicon glyphicon-refresh'
												},
												fields : {
													first_name : {
														validators : {
															stringLength : {
																min : 2,
															},
															notEmpty : {
																message : 'Please supply your first name'
															}
														}
													},
													last_name : {
														validators : {
															stringLength : {
																min : 2,
															},
															notEmpty : {
																message : 'Please supply your last name'
															}
														}
													},
													email : {
														validators : {
															notEmpty : {
																message : 'Please supply your email address'
															},
															emailAddress : {
																message : 'Please supply a valid email address'
															}
														}
													},
													phone : {
														validators : {
															notEmpty : {
																message : 'Please supply your phone number'
															},
															phone : {
																country : 'US',
																message : 'Please supply a vaild phone number with area code'
															}
														}
													},
													address : {
														validators : {
															stringLength : {
																min : 8,
															},
															notEmpty : {
																message : 'Please supply your street address'
															}
														}
													},
													city : {
														validators : {
															stringLength : {
																min : 4,
															},
															notEmpty : {
																message : 'Please supply your city'
															}
														}
													},
													state : {
														validators : {
															notEmpty : {
																message : 'Please select your state'
															}
														}
													},
													zip : {
														validators : {
															notEmpty : {
																message : 'Please supply your zip code'
															},
															zipCode : {
																country : 'US',
																message : 'Please supply a vaild zip code'
															}
														}
													},
													comment : {
														validators : {
															stringLength : {
																min : 10,
																max : 200,
																message : 'Please enter at least 10 characters and no more than 200'
															},
															notEmpty : {
																message : 'Please supply a description of your project'
															}
														}
													}
												}
											})
									.on(
											'success.form.bv',
											function(e) {
												$('#success_message')
														.slideDown({
															opacity : "show"
														}, "slow") // Do something ...
												$('#contact_form').data(
														'bootstrapValidator')
														.resetForm();

												// Prevent form submission
												e.preventDefault();

												// Get the form instance
												var $form = $(e.target);

												// Get the BootstrapValidator instance
												var bv = $form
														.data('bootstrapValidator');

												// Use Ajax to submit form data
												$
														.post(
																$form
																		.attr('action'),
																$form
																		.serialize(),
																function(result) {
																	console
																			.log(result);
																}, 'json');
											});
						});
	</script>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/navigationBar.js"></script>
	<script src="js/navigationBar.js"></script>
	<script src="js/textcount.js"></script>
</body>
</html>