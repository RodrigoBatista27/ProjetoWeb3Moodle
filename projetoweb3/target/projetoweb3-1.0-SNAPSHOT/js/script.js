const toggleButton = document.getElementById('toggle-menu');
const menu = document.querySelector('.menu');

toggleButton.addEventListener('click', () => {
  menu.style.left = menu.style.left === '-200px' ? '0' : '-200px';
});

