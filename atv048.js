function calc() {
    // Atribuir o let
    let num1 = parseFloat(document.getElementById('num1').value  || 0)
    let num2 = parseFloat(document.getElementById('num2').value  || 0)
    let num3 = parseFloat(document.getElementById('num3').value  || 0)
    let num4 = parseFloat(document.getElementById('num4').value  || 0)
    let num5 = parseFloat(document.getElementById('num5').value  || 0)
    
    // Soma dos números
    
    let soma = num1 + num2 + num3 + num4 + num5;
    let result = soma / 5;

    document.getElementById("result").innerText = "Resultado: " + result;

 
}