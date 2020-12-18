
document.addEventListener("DOMContentLoaded", () => {
  checkCoockie();
});

document.querySelector(".btn-add").addEventListener("click", () => {
  showPlusForBasket();
  objOfPic()
})


function checkCoockie(){
  let coockie = document.cookie.split(";");
  let [login, pass] = coockie;
  if(login && pass){
    document.querySelectorAll(".link-off").forEach(el => el.remove());
    document.querySelector(".link-profile").style.display = "block";
    document.querySelector(".link-logout").style.display = "block";
  }
}

function showPlusForBasket(){
  document.querySelector(".basket-plus").style.display = "inline";
  setTimeout(() => {document.querySelector(".basket-plus").style.display = "none"}, 1500)
}

async function objOfPic(){
  let id = event.target.id;
  let req = await fetch("/respondeDb", {
    method: "POST",
    headers: {
      'Content-Type': 'text/plain'
    },
    body: id
  });
}




