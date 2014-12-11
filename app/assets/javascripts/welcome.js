var loadWelcomePage = function(template, data) {
	loadPage('welcome');
	loadPartial('signup', null, 'welcome-form');
};

$(document).on('click', '#have-account', function(evt) {
 	evt.preventDefault();
	loadPartial('login', null, 'welcome-form');
});

$(document).on('click', '#need-account', function(evt) {
 	evt.preventDefault();
	loadPartial('signup', null, 'welcome-form');
});