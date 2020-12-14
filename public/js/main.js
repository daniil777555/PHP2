document.addEventListener("DOMContentLoaded", () => {
  checkCoockie();
});


function checkCoockie(){
  let coockie = document.cookie.split(";");
  let [login, pass] = coockie;
  if(login && pass){
    document.querySelectorAll(".link-off").forEach(el => el.remove());
    document.querySelector(".link-profile").style.display = "block";
    document.querySelector(".link-logout").style.display = "block";
  }
} // Я хотел, чтобы пропадали ссылки на регистрацию и вход, если уже есть куки и следовательно авторезированный пользователь, но подобный метод, который у меня, кажется мне не правельным, можете пожалуйста дать комментарий на счет этого.