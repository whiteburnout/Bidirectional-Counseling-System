var clearChk=true;
var limitByte = 10000; 


function clearMessage(frm){

  if(clearChk){ 
    frm.messagebox.value="";
    clearChk=false;
  }

}



function checkByte(frm) {
   
        var totalByte = 0;
        var message = frm.messagebox.value;

        for(var i =0; i < message.length; i++) {
                var currentByte = message.charCodeAt(i);
                if(currentByte > 128) totalByte += 1;
	else totalByte++;
        }
        frm.messagebyte.value = totalByte;

        if(totalByte > limitByte) {
                alert( limitByte+"바이트까지 전송가능합니다.");
	frm.messagebox.value = message.substring(0,limitByte);
        }
}

