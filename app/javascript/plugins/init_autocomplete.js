import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('auto-address');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
