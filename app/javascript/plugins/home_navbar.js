const homeNavbarAnimation = () => {
  const navbar = document.querySelector(".transparent-navbar")
  if (navbar) {
    window.addEventListener("scroll", (e) => {
      console.log(window.pageYOffset)
      if (window.pageYOffset > 300) {
        navbar.classList.remove("transparent-navbar")
      }
      else if (!navbar.classList.contains("transparent-navbar")){
        navbar.classList.add("transparent-navbar")
      }
    })
  }
};

export { homeNavbarAnimation };
