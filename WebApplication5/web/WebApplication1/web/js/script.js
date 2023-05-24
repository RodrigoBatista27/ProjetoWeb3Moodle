const toggleMenu = document.getElementById('toggle-menu');
const menu = document.querySelector('.menu');

toggleMenu.addEventListener('click', () => {
  toggleMenu.classList.toggle('opened');
  menu.classList.toggle('opened');
});
