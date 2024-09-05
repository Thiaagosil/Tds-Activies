function calc() {
    let num1 = parseFloat(document.getElementById('num1').value);
    let num2 = parseFloat(document.getElementById('num2').value);
   
    let result = num1 - num2;

    document.getElementById('result').innerText = "A Diferença é : " + result;
}