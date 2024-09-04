function mediaNumeros(){
    let num1 = parseInt(window.prompt('Digite o primeiro número:'));

    let num2 = parseInt(window.prompt('Digite o segundo número:'));

    let num3 = parseInt(window.prompt('Digite o terceiro número:'));

    let soma = num1 + num2 + num3;
    let media = soma / 3;

    alert('A soma dos números é ' + soma);
    alert('A média dos números é ' + media);
}