
<!-- //************************************************************************************
// 작업     : regi
// 작업설명 : 회원 가입 화면
// 작업자   : 김홍민(lovely4750@gmail.com)
// 작업버전 : 1.0
//************************************************************************************ -->


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/tagUri/tagUri.jsp"%>
<fmt:requestEncoding value="utf-8"/>

    <section id="main-content">
          <section class="wrapper">
              
              <div class="row">
                	<div class="col-md-12 col-sm-12 col-xs-12">

	                	<div class="white-panel">
	                		<div class="white-header">
	                			<h2>회원가입</h2>
	                		</div>
	                		
	                		<div class="ln_solid"></div>
	                		
	                		<form class="form-horizontal style-form" method="post">
	                		
	                			<!-- ID -->
		                		<div class="form-group">
		                              <label class="col-sm-2 col-sm-2 control-label" style="text-align:center;"> ID </label>
		                              <div class="col-sm-8">
		                                  <input type="text" class="form-control"  name="user_id" >	<!-- id="focusedInput" -->
		                                  <span class="help-block" id="msg_id">아이디는 영문자+숫자를 사용하여야 하고 최소 6글자 이상입니다.</span>
		                                  <span class="help-block" id="error_id" style="display:none;">다른 사용자가 사용하고 있는 아이디 입니다.</span>
		                              </div>
		                        </div>
	                          	<!-- ID -->
	                          	
	                          	  <!-- PW -->
		                          <div class="form-group">
		                              <label class="col-sm-2 col-sm-2 control-label" style="text-align:center;"> PW </label>
		                              <div class="col-sm-8">
		                                  <input type="text" class="form-control" name="user_pwd" >
		                                  <span class="help-block" id="msg_pwd">비밀번호는 영문자+숫자+특수문자가 포함되어야 하고 최소 6글자입니다</span>
		                                  <span class="help-block" id="error_pwd" style="display:none;">비밀번호를 올바르게 설정해 주세요</span>
		                                  
		                              </div>
		                          </div>
		                          <!-- PW -->
		                          
		                          <!-- PW확인 -->
		                          <div class="form-group">
		                              <label class="col-sm-2 col-sm-2 control-label" style="text-align:center;"> PW 확인 </label>
		                              <div class="col-sm-8">
		                                  <input type="text" class="form-control" name="user_pwd_check" >
		                                  <span class="help-block" id="msg_pwd_check">비밀번호를 한번더 입력해 주세요</span>
		                                  <span class="help-block" id="error_pwd_check" style="display:none;">일치하지 않는 비밀번호 입니다.</span>
		                              </div>
		                          </div>
		                          <!-- PW확인 -->
		                          
		                          
		                          <!-- 이름 -->
		                          <div class="form-group">
		                              <label class="col-sm-2 col-sm-2 control-label" style="text-align:center;"> 이름 </label>
		                              <div class="col-sm-8">
		                                  <input type="text" class="form-control" name="user_name" >
		                                  <!-- <span class="help-block">' - ' 제거 해주세요</span> -->
		                              </div>
		                          </div>
	                          	  <!-- 이름 -->
		                          
		                          
		                          <!-- 핸드폰 번호 -->
		                          <div class="form-group">
		                              <label class="col-sm-2 col-sm-2 control-label" style="text-align:center;"> 핸드폰 번호 </label>
		                              <div class="col-sm-8">
		                                  <input type="text" class="form-control" name="user_phone" >
		                                  <span class="help-block" id="msg_phone">' - ' 없이 휴대폰 번호 11자리를 입력해 주세요</span>
		                                  <span class="help-block" id="error_phone" style="display:none;">' - ' 제거 해주세요</span>
		                                  
		                              </div>
		                          </div>
	                          	  <!-- 핸드폰 번호 -->
	                          	  
	                          	  <!-- 주소 -->
		                          <div class="form-group">
		                              <label class="col-sm-2 col-sm-2 control-label" style="text-align:center;"> 주소 api </label>
		                              <div class="col-sm-8">
		                                  <input type="text" class="form-control" name="" >
		                                  <span class="help-block">' - ' 제거 해주세요</span>
		                              </div>
		                          </div>
	                          	  <!-- 주소 -->
	                          	  
	                          	  
	                          	  <!-- 생일 -->
		                          <div class="form-group">
		                              <label class="col-sm-2 col-sm-2 control-label" style="text-align:center;"> 생일 및 달력 api </label>
		                              <div class="col-sm-8">
		                                  <input type="text" class="form-control" name="" >
		                                  <span class="help-block">' - ' 제거 해주세요</span>
		                              </div>
		                          </div>
	                          	  <!-- 생일 -->
	                          	  
	                          	  
	                          	  <!-- 이미지 -->
		                          <div class="form-group">
		                              <label class="col-sm-2 col-sm-2 control-label" style="text-align:center;"> 프로필 이미지 </label>
		                              
		                              <div class="col-sm-8">
			                              <img src="<%=StaticConfig.NO_PROFILE_IMAGE %>" alt="이미지 못찾음" class="img-rounded"
			                              	 id="imgimg" style="width:140px; heigth:140px;">
			                              			
			                              <input type="file" id="exampleInputFile" name="m_photo" onchange="readURL(this)">
			                              <input type="button" value="삭제" onclick="deleteURL()">
		                              </div>
		                          </div>
	                          	  <!-- 이미지 -->
	                          	  
	                          	  
	                          </form>
                          
	                		</div>
	                	</div>
                	</div>
          </section>
	</section>
	
<script src="js/regi/hongma.regi.js"></script>

<script type="text/javascript">
function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#imgimg').attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
    }
}

function deleteURL(){
	$('#imgimg').attr('src','hongmaFile/img/no_profile_image.png');
	$('#exampleInputFile').val("");
}
</script>
