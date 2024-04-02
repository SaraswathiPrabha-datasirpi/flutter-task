
function add(){
    var num1 =parseInt(document.getElementById("num1").value);
    var num2 = parseInt( document.getElementById("number").value);
     var r = (document.getElementById("result").value);

     if (!num1 || !num2) {
        alert("Please enter both numbers");
    
      }
    
       r = num1+num2;
       document.getElementById("result").innerHTML = "Result: " + r;
       document.getElementById("num1").value=" ";
       document.getElementById("number").value=" ";

      

}
function sub(){
    var num1 =parseInt(document.getElementById("num1").value);
    var num2 = parseInt( document.getElementById("number").value);
     var r = (document.getElementById("result").value);
    
     if (!num1 || !num2) {
        alert("Please enter both numbers");
    
      }

       r = num1-num2;
       document.getElementById("result").innerHTML = "Result: " + r;

}
function multiply(){
    var num1 =parseInt(document.getElementById("num1").value);
    var num2 = parseInt( document.getElementById("number").value);
    var r = (document.getElementById("result").value);
     
     if (!num1 || !num2) {
        alert("Please enter both numbers");
    
      }

       r = num1*num2;
       document.getElementById("result").innerHTML = "Result: " + r;
       alert("Result:"+ r);

}
function divide(){
    var num1 =parseInt(document.getElementById("num1").value);
    var num2 = parseInt( document.getElementById("number").value);
    var r = (document.getElementById("result").value);

    if (!num1 || !num2) {
        alert("Please enter both numbers");
    
      }
    
       r = num1/num2;
       document.getElementById("result").innerHTML = "Result: " + r;

}



