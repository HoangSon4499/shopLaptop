/*các sử lý kịch bản cho login.html*/

function checkValidLogin(fn){
	//Lấy thông tin đăng  nhập
	var name=fn.txtUserName.value;
	var pass=fn.txtUserPass.value;
	
	var validUserName=true;
	var validUserPass=true;
	
	//Bieesb ghi nhận thông báo sau kiểm tra
	var message="";
	
	//Kiểm tra message
	if(name==""){
		validUserName=false;
		message="thiếu tên đăng nhập vào hệ thống.";
	}else{
		if(name.length<6){
			validUserName=false;
			message="tên đăng nhập không hợp lệ.";
		}else if(name.indexOf(" ")!=-1){
			validUserName=false;
			message="tên đăng nhập có dấu cách,nên xem lại.";
		}else if(name.indexOf("@")!=-1){
			var parttern=/\w+@\w+[.]\w/;
			if(!name.match(parttern)){
				validUserName=false;
				message="không đúng cấu trúc hộp thư.";
			}
		}
	}
	
	//Kiểm tra pass
	pass=pass.trim();
	if(pass==""){
		validUserPass=false;
		message+="\n Thiếu mật khẩu vào hệ thống";
	}else{
		if(pass.length<6){
			validUserPass=false;
			message="\n Mật khẩu không hợp lệ, hoặc quá ngắn.";
		}
	}
	
	var isCheck=fn.chkSave.checked;
	if(isCheck){
		message+="\n Bạn có thực sự muốn lưu tài khoản đăng nhập trên máy này?";
	}
	
	//Thông báo
	if(message!=""){
		window.alert(message);
		if(!validUserName){
			fn.txtUserName.focus();
			fn.txtUserName.select();
		}else if(!validUserPass){
			fn.txtUserPass.focus();
			fn.txtUserPass.select();
		}
	}
	
	return validUserName && validUserPass;
}