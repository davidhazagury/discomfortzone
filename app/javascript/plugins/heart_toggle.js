const toggle = (event) => {
  const like = event.currentTarget.querySelector("i")
  if (like.classList.contains("fas")) {
    console.log("This heart is full")
    like.classList.remove("fas")
    like.classList.add("far")
  } else {
    console.log("This heart is empty")
    like.classList.remove("far")
    like.classList.add("fas")
  }
}


const heartToggler = () => {
  const hearts = document.querySelectorAll(".heart-link")
  hearts.forEach((heart) => {
    heart.addEventListener('click', toggle)
  })
}

export { heartToggler }
