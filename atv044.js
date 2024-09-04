function verificarNumero(){
    let numero = parseFloat(window.prompt('Digite o número: '))

    if (numero < 0){
        alert('O número é negativo.')
    } 
    else if (numero > 0){
        alert('O número é positivo.')
    }

    else {
        alert('O número é zero.')
    }
    
}