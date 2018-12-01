function alertFunction() {
    alert("정말 취소하시겠습니까?");
}

function lecBlankFunction() {
	var subject = document.getElementById("subject");
	var lecPlan = document.getElementById("lecPlan");
	
	if(!subject.value){
		alert('과목명을 입력하세요.');
		return;
	}
	if(!lecPlan.value){
		alert('교과목표를 입력하세요.');
		return;
	}
}

function ttBlankFunction() {
	var subject = document.getElementById("subject");
	var lecCode = document.getElementById("lecCode");
	var profName = document.getElementById("profName");
	
	if(!subject.value){
		alert('과목명을 입력하세요.');
		return;
	}
	if(!lecCode.value){
		alert('과목코드를 입력하세요.');
		return;
	}
	if(!profName.value){
		alert('교수명을 입력하세요.');
		return;
	}
}

function move(url) {
	location.href=url;
}

