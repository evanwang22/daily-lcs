var loadWelcomePage = function(template, data) {
	loadPartial('signup', null, 'welcome-form');
	loadAuthenticityToken();
};

$(document).on('click', '#have-account', function(evt) {
 	evt.preventDefault();
	loadPartial('login', null, 'welcome-form');
	loadAuthenticityToken();
});

$(document).on('click', '#need-account', function(evt) {
 	evt.preventDefault();
	loadPartial('signup', null, 'welcome-form');
	loadAuthenticityToken();
});

var loadAuthenticityToken = function() {
	var token = $('meta[name=csrf-token]').attr("content");
	$('.authenticity-input').val(token);
}