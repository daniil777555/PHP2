let num = document.querySelector(".n").innerHTML;
console.log(num);
let displayNum = document.querySelectorAll(".block").length;

document.querySelector(".btn").addEventListener("click", getEls);

async function getEls(){
  displayNum = displayNum < num ? displayNum + 5 : num;
  window.location.href = `index.php?limit=${displayNum}`; //Я не очень понял как мне получить в ответ на запрос к серверу твиг шаблон и решил сделать таким способом. если можете, скажите,пожалуйста, в чем недостаток такого подхода как у меня.
}