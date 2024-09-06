function calc() {
   
    const num1 = document.getElementById("num1").value;
    const num2 = document.getElementById("num2").value;
    
    const operacoes = document.getElementById("operacoes").value;

    let result;
    
switch (operacoes) {
        case 'soma':
            result = parseFloat(num1) + parseFloat(num2);
            break;
        case 'subtracao':
            result = parseFloat(num1) - parseFloat(num2);
            break;
        case 'multiplicacao':
            result = parseFloat(num1) * parseFloat(num2);
            break;
        case 'divisao':
            if (num2 == '0') {
                alert("Não pode ser dividido por zero.");
                return;
            }
            result = parseFloat(num1) / parseFloat(num2);
            break;
        default:
            alert("Operador Inválido");
            return; 
    }
    
    document.getElementById("result").innerText = "O resultado é " + result;
}
