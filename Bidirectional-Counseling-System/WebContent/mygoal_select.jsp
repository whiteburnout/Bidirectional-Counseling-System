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

<title>나의목표 수정</title>
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
			action="mygoal_select?user_id=${userID.user_id}" method="post"
			id="contact_form">
			<fieldset>

				<!-- Form Name -->
				<div class="select-header">
					<legend>나의 목표 수정</legend>
				</div>
				<!-- Text input-->



				<!-- Select Basic -->


				<div class="form-group">
					<label class="col-md-4 control-label">학력</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-book"></i></span> <select name="g_education"
								class="form-control selectpicker">
								<option value="${user.g_education}">${user.g_education}</option>
								<option value="초졸">초졸</option>
								<option value="중졸">중졸</option>
								<option value="고졸">고졸</option>
								<option value="대졸">대졸</option>
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
								name="g_certification" class="form-control selectpicker">
								<option value="${user.g_certification}">${user.g_certification}</option>
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
								class="glyphicon glyphicon-pencil"></i></span> <select name="g_toeic"
								class="form-control selectpicker">
								<option value="${user.g_toeic}">${user.g_toeic}</option>
								<option value=100>100~199</option>
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
								class="glyphicon glyphicon-pencil"></i></span> <select name="g_toefl"
								class="form-control selectpicker">
								<option value="${user.g_toefl}">${user.g_toefl}</option>
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
								class="glyphicon glyphicon-pencil"></i></span> <select name="g_hsk"
								class="form-control selectpicker">
								<option value="${user.g_hsk}">${user.g_hsk}</option>
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
								class="glyphicon glyphicon-pencil"></i></span> <select name="g_jlpt"
								class="form-control selectpicker">
								<option value="${user.g_jlpt}">${user.g_jlpt}</option>
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
								class="glyphicon glyphicon-user"></i></span> <select name="g_field"
								class="form-control selectpicker">
								<option value="${user.g_field}">${user.g_field}</option>
								<option value="선택">선택</option>
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
					User user3;
					int year, month;
					user3 = (User) request.getAttribute("user");
					Date temp3 = user3.getG_field_date();
					String c = temp3 + "";
					String array3[] = c.split("-");
					user3.setYear3(Integer.parseInt(array3[0])).setMonth3(Integer.parseInt(array3[1]));
				%>

				<div class="form-group">
					<label class="col-md-4 control-label">목표완료시간</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-time"></i></span> <select
								name="g_career_year" class="form-control selectpicker">
								<option value="${user.year3}">${user.year3}</option>
								<option value="2019">2019</option>
								<option value="2019">2020</option>
								<option value="2019">2021</option>
								<option value="2019">2022</option>
								<option value="2019">2023</option>
								<option value="2019">2024</option>
								<option value="2019">2025</option>
								<option value="2019">2026</option>
								<option value="2019">2027</option>
								<option value="2019">2028</option>
								<option value="2019">2029</option>
								<option value="2019">2030</option>





							</select> <select name="g_career_month" class="form-control selectpicker">
								<option value="${user.month3}">${user.month3}</option>
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


				<form name="form">
					<div class="form-group">
						<label class="col-md-4 control-label">나의 목표</label>
						<div class="col-md-4 inputGroupContainer">
							<div class="input-group">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-pencil"></i></span>
								<textarea rows="5" cols="40" class="form-control" name="mygoal"
									onFocus="clearMessage(this.form);"
									onKeyUp="checkByte(this.form);">${user.mygoal}</textarea>
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