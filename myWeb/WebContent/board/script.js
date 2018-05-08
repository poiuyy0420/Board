function writeSave(){
	if(document.writeform.wirte.value==""){
		alert("작성자를 입력하십시오");
		document.writeform.write.focus();
		return false;
	}
	if(document.writeform.subject.value==""){
		alert("제목을 입력하십시오");
		document.writeform.subject.focus();
		return false;
	}
	if(document.writeform.content.value==""){
		alert("내용을 입력하십시오");
		document.writeform.content.focus();
		return false;
	}
	if(document.writeform.pass.value=""){
		alert("비밀번호를 입력하십시오");
		document.writeform.pass.focus();
		return false;
	}
		
}