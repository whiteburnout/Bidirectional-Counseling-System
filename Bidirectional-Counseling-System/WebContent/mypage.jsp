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

<title>마이페이지</title>
<style>
.container {
	padding: 100px;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp" />

	<div class="container">
		<form class="well form-horizontal" action="mypage_select"
			method="post" id="contact_form">
			<fieldset>

				<!-- Form Name -->
				<div class="select-header">
					<legend>회원 정보</legend>
				</div>
				<!-- Text input-->



				<!-- Select Basic -->

				<div class="form-group">
					<label class="col-md-4 control-label">최종학력</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-home"></i></span> <input name="first_name"
								placeholder="" class="form-control" type="text"
								value="${user.education}">
						</div>
					</div>
				</div>



				<div class="form-group">
					<label class="col-md-4 control-label">전공</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-book"></i></span><input name="first_name"
								placeholder="" class="form-control" type="text"
								value="${user.major}">
						</div>
					</div>
				</div>


				<div class="form-group">
					<label class="col-md-4 control-label">자격증1</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-book"></i></span> <input name="first_name"
								placeholder="" class="form-control" type="text"
								value="${user.certification1}">
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">자격증2</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-book"></i></span> <input name="first_name"
								placeholder="" class="form-control" type="text"
								value="${user.certification2}">
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">자격증3</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-book"></i></span> <input name="first_name"
								placeholder="" class="form-control" type="text"
								value="${user.certification3}">
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">자격증4</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-book"></i></span> <input name="first_name"
								placeholder="" class="form-control" type="text"
								value="${user.certification4}">
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">토익점수</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-pencil"></i></span> <input name="first_name"
								placeholder="" class="form-control" type="text"
								value="${user.toeic}">
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">토플점수</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-pencil"></i></span> <input name="first_name"
								placeholder="" class="form-control" type="text"
								value="${user.toefl}">
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">중국어등급</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-pencil"></i></span> <input name="first_name"
								placeholder="" class="form-control" type="text"
								value="${user.hsk}">
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">일본어등급</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-pencil"></i></span> <input name="first_name"
								placeholder="" class="form-control" type="text"
								value="${user.jlpt}">
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">직무</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input name="first_name"
								placeholder="" class="form-control" type="text"
								value="${user.field}">
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">경력시작</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-time"></i></span> <input name="first_name"
								placeholder="" class="form-control" type="text"
								value="${user.f_start}">
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">경력끝</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-time"></i></span> <input name="first_name"
								placeholder="" class="form-control" type="text"
								value="${user.f_end}">
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">경력기간(0~10년)</label>
					<div class="col-md-4 selectContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-time"></i></span> <input name="first_name"
								placeholder="" class="form-control" type="text"
								value="${user.f_period}">
						</div>
					</div>
				</div>

				<div class="form-group">
					<label class="col-md-4 control-label">자기소개</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-pencil"></i></span>
							<textarea rows="5" cols="40" class="form-control"
								name="introduction">${user.introduction}</textarea>
						</div>
					</div>
				</div>

				<!-- Button -->
				<div class="form-group">
					<label class="col-md-4 control-label"></label>
					<div class="col-md-4">
						<a href='mypage_select?user_id=${userID.user_id}'
							class="btn btn-primary form-control">수정하기</a>
					</div>
				</div>

			</fieldset>
		</form>
	</div>
	<!-- /.container -->
	<script>
	  $(document).ready(function() {
		    $('#contact_form').bootstrapValidator({
		        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
		        feedbackIcons: {
		            valid: 'glyphicon glyphicon-ok',
		            invalid: 'glyphicon glyphicon-remove',
		            validating: 'glyphicon glyphicon-refresh'
		        },
		        fields: {
		            first_name: {
		                validators: {
		                        stringLength: {
		                        min: 2,
		                    },
		                        notEmpty: {
		                        message: 'Please supply your first name'
		                    }
		                }
		            },
		             last_name: {
		                validators: {
		                     stringLength: {
		                        min: 2,
		                    },
		                    notEmpty: {
		                        message: 'Please supply your last name'
		                    }
		                }
		            },
		            email: {
		                validators: {
		                    notEmpty: {
		                        message: 'Please supply your email address'
		                    },
		                    emailAddress: {
		                        message: 'Please supply a valid email address'
		                    }
		                }
		            },
		            phone: {
		                validators: {
		                    notEmpty: {
		                        message: 'Please supply your phone number'
		                    },
		                    phone: {
		                        country: 'US',
		                        message: 'Please supply a vaild phone number with area code'
		                    }
		                }
		            },
		            address: {
		                validators: {
		                     stringLength: {
		                        min: 8,
		                    },
		                    notEmpty: {
		                        message: 'Please supply your street address'
		                    }
		                }
		            },
		            city: {
		                validators: {
		                     stringLength: {
		                        min: 4,
		                    },
		                    notEmpty: {
		                        message: 'Please supply your city'
		                    }
		                }
		            },
		            state: {
		                validators: {
		                    notEmpty: {
		                        message: 'Please select your state'
		                    }
		                }
		            },
		            zip: {
		                validators: {
		                    notEmpty: {
		                        message: 'Please supply your zip code'
		                    },
		                    zipCode: {
		                        country: 'US',
		                        message: 'Please supply a vaild zip code'
		                    }
		                }
		            },
		            comment: {
		                validators: {
		                      stringLength: {
		                        min: 10,
		                        max: 200,
		                        message:'Please enter at least 10 characters and no more than 200'
		                    },
		                    notEmpty: {
		                        message: 'Please supply a description of your project'
		                    }
		                    }
		                }
		            }
		        })
		        .on('success.form.bv', function(e) {
		            $('#success_message').slideDown({ opacity: "show" }, "slow") // Do something ...
		                $('#contact_form').data('bootstrapValidator').resetForm();

		            // Prevent form submission
		            e.preventDefault();

		            // Get the form instance
		            var $form = $(e.target);

		            // Get the BootstrapValidator instance
		            var bv = $form.data('bootstrapValidator');

		            // Use Ajax to submit form data
		            $.post($form.attr('action'), $form.serialize(), function(result) {
		                console.log(result);
		            }, 'json');
		        });
		});


	</script>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/navigationBar.js"></script>
</body>
</html>