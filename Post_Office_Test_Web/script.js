'use strict'

const defaultValue = '';
const mathsOperators = ['+','-','*','/'];
let current_value = '';

function evaluateData() {
    let showBox = document.getElementById("showBox");
    let dataString = showBox.innerHTML;
    // console.log('dataString - before: ' + dataString);
    // console.log(showBox);
    dataString = dataString.replace(/\s/g, "");
    // console.log('dataString - after: ' + dataString);
    // console.log(showBox);
    gatherData(dataString).then((parsedData) => {
        runOperations(parsedData.result).then((answer) => {
            answer = parsedData.result;
            showBox.textContent = answer;
            current_value = answer;
        })
    }).catch((err) => console.log(err))
}

function addToShowBox(input) {
    let showBox = document.getElementById("showBox");
    showBox.innerHTML += input;
    return;

}

function runOperations(numOne, numTwo, operator) {
    return new Promise((resolve, reject) => {
        try {
            let answer = '0';
            switch (operator){
                case "+":
                answer = numOne + numTwo;
                break;
                case "-":
                answer = numOne - numTwo;
                break;
                case "*":
                answer = numOne * numTwo;
                break;
                case "/":
                answer = numOne / numTwo;
                break;
            }
            resolve(answer)
        } catch(err) {
            reject(err);
        }
    })
}

function gatherData(dataString) {
    return new Promise((resolve, reject) => {
        let parsed = eval(dataString);
        console.log(parsed);
        try{
            let parsedData = {
                result: [parsed]
            };
            resolve(parsedData);
        } catch(err) {
            reject(err);
        }
    })
}

function clearDisplay() {
    let showBox = document.getElementById("showBox");
    showBox.innerHTML = defaultValue;
    return;
}
