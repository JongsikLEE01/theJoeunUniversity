function checkDate(event) {
	let regExpday = /^\d{4}-\d{2}-\d{2}$/
				    
	let strDate = document.getElementById("strDate").value
	let endDate = document.getElementById("endDate").value
	let content = document.getElementById("content").value
			
	// 형식 검사
	if(!regExpday.test(strDate) || !regExpday.test(endDate) ){
		alert('시작일과 종료일을 날짜 형식에 맞게 입력해주세요\n 날짜 형식은 YYYY-MM-DD입니다')
		form.strDate.focus()
		event.preventDefault()
		return false;
	}
			
				    
	// 빈칸 검사			
	if(strDate == ""){
		alert('시작일을 입력해주세요')
		form.strDate.focus()
		event.preventDefault()
		return false;
	}
	if(endDate == ""){
		alert('종료일을 입력해주세요')
		form.endDate.focus()
		event.preventDefault()
		return false;
	}
	if(content.trim() === ""){
		alert('일정을 입력해주세요')
		form.content.focus()
		event.preventDefault()
		return false;
	}
			
	// 시작일 이전 종료일인지 검사
	let strDateObj = new Date(strDate);
	let endDateObj = new Date(endDate);
			
	if (strDateObj > endDateObj) {
    	alert("종료일은 시작일 이후여야 합니다");
    	event.preventDefault()
        return false;
    }
	return true;
}