$(document).on('click', '#navbar-brand', function(evt) {
  evt.preventDefault();
  loadPage('home');
});

$(document).on('click', '#navbar-about', function(evt) {
  evt.preventDefault();
  loadPage('about');
});

$(document).on('click', '#navbar-profile', function(evt) {
  evt.preventDefault();
  loadPage('profile');
});


$(document).on('click', '#navbar-login', function(evt) {
  evt.preventDefault();
  loadPage('welcome');
});


$(document).on('click', '#navbar-logout', function(evt) {
  evt.preventDefault();
  loadPage('welcome');
});
