window.addEventListener('load', function(){
  const menu1 = document.getElementById("menu1");
  const pullDownMenu1 = document.getElementById("menu1-pull-down");
  const menu2 = document.getElementById("menu2");
  const pullDownMenu2 = document.getElementById("menu2-pull-down");
  const menu3 = document.getElementById("menu3");
  const pullDownMenu3 = document.getElementById("menu3-pull-down");
  const menu4 = document.getElementById("menu4");
  const pullDownMenu4 = document.getElementById("menu4-pull-down");

  menu1.addEventListener('mouseover', function(){
    this.setAttribute("style", "background-color: orange;");
  });
  menu1.addEventListener('mouseout', function(){
    this.removeAttribute("style", "background-color: orange;");
  });
  menu2.addEventListener('mouseover', function(){
    this.setAttribute("style", "background-color: orange;");
  });
  menu2.addEventListener('mouseout', function(){
    this.removeAttribute("style", "background-color: orange;");
  });
  menu3.addEventListener('mouseover', function(){
    this.setAttribute("style", "background-color: orange;");
  });
  menu3.addEventListener('mouseout', function(){
    this.removeAttribute("style", "background-color: orange;");
  });
  menu4.addEventListener('mouseover', function(){
    this.setAttribute("style", "background-color: orange;");
  });
  menu4.addEventListener('mouseout', function(){
    this.removeAttribute("style", "background-color: orange;");
  });
  menu1.addEventListener('click', function() {
    if (pullDownMenu1.getAttribute("style") == "display:block;") {
      pullDownMenu1.removeAttribute("style", "display:block;");
    } else {
      pullDownMenu1.setAttribute("style", "display:block;");
    }
  });
  menu2.addEventListener('click', function() {
    if (pullDownMenu2.getAttribute("style") == "display:block;") {
      pullDownMenu2.removeAttribute("style", "display:block;");
    } else {
      pullDownMenu2.setAttribute("style", "display:block;");
    }
  });
  menu3.addEventListener('click', function() {
    if (pullDownMenu3.getAttribute("style") == "display:block;") {
      pullDownMenu3.removeAttribute("style", "display:block;");
    } else {
      pullDownMenu3.setAttribute("style", "display:block;");
    }
  });
  menu4.addEventListener('click', function() {
    if (pullDownMenu4.getAttribute("style") == "display:block;") {
      pullDownMenu4.removeAttribute("style", "display:block;");
    } else {
      pullDownMenu4.setAttribute("style", "display:block;");
    }
  });
});