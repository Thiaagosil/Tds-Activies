function verificarNumero(){
    let numero = parseInt(window.prompt('Digite o Número: '))

    if(numero % 2 == 0){
        alert('O número é par.')
    }
    else{
        alert('O número é ímpar.')
    }
}