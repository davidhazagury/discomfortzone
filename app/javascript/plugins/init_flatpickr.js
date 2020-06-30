import flatpickr from "flatpickr";


const initFlatpickr = () => {
  const elements = document.querySelectorAll(".calendar")
  elements.forEach((element) => {
    flatpickr(element, {
      enableTime: true,
      dateFormat: "Y-m-d H:i",
      disableMobile: true
    });
  })


}





export { initFlatpickr }
