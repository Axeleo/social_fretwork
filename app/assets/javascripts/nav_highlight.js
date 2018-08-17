  var url = window.location.href
  var firstNav = document.querySelector(".left-nav").children[0]
  if (url.includes("/jobs") || url.includes("/musos")) {
    firstNav.classList.add("menu__item--current")
  }