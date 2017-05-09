/**
 * validate 컴포넌트
 */

(function ($) {
	
	 /*$.fn.rdxValidation = function (options) {
		// method calling
	        if (typeof options == 'string') {
	            var args = Array.prototype.slice.call(arguments, 1);
	            var res;
	            this.each(function () {
	                var dataObj = $.data(this, 'rdxValidation');
	                if (dataObj && $.isFunction(dataObj[options])) {
	                    var r = dataObj[options].apply(dataObj, args);
	                    if (res === undefined) {
	                        res = r;
	                    }
	                    if (options == 'destroy') {
	                        $.removeData(this, 'rdxValidation');
	                    }					
	                }
	            });
	            if (res !== undefined) {
	                return res;
	            }
	            return this;
	        }
	        rdxValidation = this;
		 
	        
	      //디폴트 값을 구축
	        var defaults = {
	        		
	        };
	        
	 };*/
	 
	 $.fn.validate = function(){
		 inputArr = $(($(this).selector)+' input');
		 
		 $.each(inputArr,function(){
			$obj = $(this);
			
			console.log('$obj',$obj);
			var valid = validate($obj);
        	
			console.log('valid',valid);
			
        	if(!valid.flag){
        		getMessage(valid.obj,valid.label,valid.msgCode);
        		return valid.flag;
        	}
		 });
		 
		 return true;
	 };
	 
	 
	 
	 /* validation 통합체크 
	  * 
	  * obj값은 원하는 태그 객체를 넣어주면 됨
	  * 
	  * option = required : 필수체크
	  * 			maxlength : 최대값 체크 <data-rdx-maxlength 태그 필요>
	  * 			minlength : 최소값 체크 <data-rdx-minlength 태그 필요>
	  * 			isspace : 공백 검사 
	  * 			masking : masking 검사
	  * 			regex : 해당된 규칙 검사 <원하는 정규식 규칙을 isValidReg() 안에 정의 해야됨//data-rdx-regEx 태그 필요>
	  * 			duplicateidcheck : 아이디와 동일한 비밀번호를 사용하였는지 검사 
	  * 			
	  * */
	 
	 function validate(obj){
		var obj = obj;
		var val = obj.val();
		var label = obj.data('rdx-label');
		
		var msgResult = {
				obj : obj,
				label : label,
				msgCode : '',
				flag : true
		};
		
		console.log('validate start');
		
		if(obj.data('rdx-required')){
			if(!isRequired(val)){
				msgResult.msgCode = 'VAL_W_001';
				msgResult.flag = false;
				mkVac(obj);
				return msgResult;
			}
		}
		
		if(obj.data('rdx-maxlength') != undefined){
			if(isMaxSize(obj)){
				msgResult.msgCode = 'VAL_W_002';
				msgResult.flag = false;
				mkVac(obj);
				return msgResult;
			}
		}
		
		if(obj.data('rdx-minlength') != undefined){
			if(isMinSize(obj)){
				msgResult.msgCode = 'VAL_W_003';
				msgResult.flag = false;
				mkVac(obj);
				return msgResult;
			}
		}
		
		if(obj.data('rdx-isspace') != undefined){
			if(isSpace(val)){
				msgResult.msgCode = 'VAL_W_009';
				msgResult.flag = false;
				mkVac(obj);
				return msgResult;
			}
		}
		
		if(obj.data('rdx-masking') != undefined){
			if(isValidMask(obj)){
				msgResult.msgCode = 'VAL_W_005';
				msgResult.flag = false;
				mkVac(obj);
				return msgResult;
			}
		}
		
		if(obj.data('rdx-regex') != undefined){
			if(!isValidReg(obj)){
				msgResult.msgCode = 'VAL_W_006';
				msgResult.flag = false;
				mkVac(obj);
				return msgResult;
			}
		}
		
		if(obj.data('rdx-duplicateidcheck') != undefined){
			if(duplicateIdCheck(obj)){
				msgResult.msgCode = 'VAL_W_008';
				msgResult.flag = false;
				mkVac(obj);
				return msgResult;
			}
		}
		
		
		console.log('validate end');
		
		return msgResult;
	 }

//메세지 에러 발생
//obj (object), label: data-rdx-label, msg:메세지 내용<redworks.message.js>

function getMessage(obj,label,msg){
	Lobibox.alert(
			 'warning',
			 {
		 		msg:RDX_MESSAGES.mergeMessage(msg,[label])
			 	,closed : function(lobibox){
			 		obj.focus();
			 	}
			 });
}



//validate 속성 체크

/* null undefined 필수체크 */
function isRequired(val) {
	
	var result = true;
	
	if(undefined == val|| null == val  || '' == val){
		result = false;
	}
	
	return result;
}
/* null undefined 공백 포함 체크 */
/* val 이 string | object 확인후 null 검사 */
/* val() 값이 없으면 true 있으면 false */
function isEmpty(val) {
	var result = true;
	
	if(typeof val == "string"){
		if(!(undefined == val|| null == val  || '' == val)){
			result = false;
		}
	}else{
		var objVal = val.val();
		if(!(undefined == objVal|| null == objVal  || '' == objVal)){
			result = false;
		}
	}
	
	return result;
}




/* maxSize 보다 큰지 판단(큰 값은 maxLength 이상) */
/* val -> 태그의 길이 값 
 * formObj -> 태그 객체 
 * isMaxSize() 사용시 태그에 'data-rdx-maxlength' 값을 지정 해주어야 한다.*/
function isMaxSize(obj){
	var result = false;
	
	if(!isObj(obj)){
		console.log('객체가 아닙니다.');
	}
	
	var maxLength = getMaxSize(obj);
	var val = obj.val().length;
	
	if(val>=maxLength){
		result = true;
	}
	return result;
}

function isObj(obj){
	var result = false;
	
	if(typeof obj =="object"){
		result= true;
	}
	
	return result;
}

/* minlength 값 구하기*/
/* object 확인 후 minLength 값 구하기*/
function getMinSize(obj){
	var minSize;
	
	if(!isObj(obj)){
		return false;
	}
	
	minSize = obj.attr('data-rdx-minlength');
	
	return minSize;
	
}

function getMaxSize(obj){
	var maxSize;
	
	if(!isObj(obj)){
		return false;
	}
	
	maxSize = obj.attr('data-rdx-maxlength');
	
	return maxSize;
}


/* min 사이즈보다 작은지 확인 */
/* val -> 태그의 길이 값 
 * formObj -> 태그 객체 
 * isMinSize() 사용시 태그에 'data-rdx-minlength' 값을 지정 해주어야 한다.*/
function isMinSize(obj){
	var result = false;
	
	var label = $(obj).attr('data-rdx-label');
	
	if(!isObj(obj)){
		console.log('obj가 객체가 아닙니다.');
	}
	
	var minLength = getMinSize(obj);
	
	
	var val = obj.val().length;
	
	if(val<minLength){
		result = true;
	}
	
	return result;
}

function duplicateIdCheck(userPw){
	var result = false;
	
	var idVal = $('#userId').val();
	
	//console.log('idVal : '+idVal);
	//console.log('pwVal : '+userPw.val());
	
	if(userPw.val().indexOf(idVal) >-1){
		result=true;
	}
	
	return result;
}

/*
 * masking 체크
 * 
 * input : obj 객체
 * output : true or false
 * 
 * 객체의 value 값에 특수문자가 하나라도 포함되어 있다면 true 를 리턴 
 * 
 * */
function isValidMask(obj){
	var val = obj.val();
	var label = obj.attr("data-rdx-label");
	
	
	if(isEmpty(obj)) return false;
	if(isSymbol(obj)) {
		return true;
	}else{
		return false;
	}
}


/*
 * 영문자가 포함되어 있는지 체크
 * */
function isEng(str){
	if(isEmpty(str)) return false;
	
	var regEng = /^[a-zA-Z]$/;
	
	if(!regEng.test(str)){
		return false;
	}
	return true;
}

/*
 * 숫자가 포함되어 있는지 체크
 * */
function isNum(str){
	if(isEmpty(str)) return false;
	
	var regNum = /^[0-9]$/;
	
	if(!regNum.test(str)){
		return false;
	}
	
	return true;
}

/*
 * 한글이 포함되어 있는지 체크
 * */
function isKor(str){
	if(isEmpty(str)) return false;
	
	var regKor = /[가-힣]/;
	
	if(!regKor.test(str)){
		return false;
	}
	
	return true;
}

/*
 * 특수문자가 포함되어 있는지 체크
 * */
function isSymbol(str){
	if(isEmpty(str)) return false;
	
	var regSymbol = /[~!@\#$%<>^&*\()\-=+_\’]/gi;
	
	if(!regSymbol.test(str)){
		return false;
	}
	
	return true;
		
		
}

/*
 * 파라미터로 받은 문자열 중에 공백이 포함되어 있는지 검사
 * */
function isSpace(str){
	var regSpace = /[\s]/;
	
	if(!regSpace.test(str)){
		return false;
	}
	
	return true;
}


/*
 * 파라미터로 받은 객체의 값을 ""(공백) 으로 만든다. 
 * */
function mkVac(obj){
	
	if(!isObj(obj)){
		console.log('들어온 파라미터가 객체가 아닙니다.');
		return false;
	}
	
	obj.val("");
	return true;
	
}

})(jQuery);

