// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {
	loadWelcomePage();
	loadNavigation('navigation');
});

var loadPartial = function(template, data, id) {
	data = data || {};
	$('#' + id).html(Handlebars.templates[template](data));
};

var loadPage = function(template, data) {
	loadPartial(template, data, 'main-container');
};

var loadNavigation = function(template, data) {
	loadPartial(template, data, 'navigation-container');
};

var loadWelcomePage = function(template, data) {
	loadPage('welcome');
	loadPartial('signup', null, 'user-form');
};