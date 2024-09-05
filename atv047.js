function somatres() {
    // Atribuir o let
    let num1 = parseFloat(document.getElementById('num1').value  || 0)
    let num2 = parseFloat(document.getElementById('num2').value  || 0)
    let num3 = parseFloat(document.getElementById('num3').value  || 0)
    
    let result = num1 + num2 + num3;
    document.getElementById("result").innerText = "Resultado: " + result;
}