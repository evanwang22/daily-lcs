(function() {
  var template = Handlebars.template, templates = Handlebars.templates = Handlebars.templates || {};
templates['about'] = template({"compiler":[6,">= 2.0.0-beta.1"],"main":function(depth0,helpers,partials,data) {
  return "<h1>About Page</h1>";
  },"useData":true});
templates['contest'] = template({"compiler":[6,">= 2.0.0-beta.1"],"main":function(depth0,helpers,partials,data) {
  return "<h1>Contest Page</h1>";
  },"useData":true});
templates['home'] = template({"compiler":[6,">= 2.0.0-beta.1"],"main":function(depth0,helpers,partials,data) {
  return "<h1>Home Page</h1>";
  },"useData":true});
templates['lineup'] = template({"compiler":[6,">= 2.0.0-beta.1"],"main":function(depth0,helpers,partials,data) {
  return "<h1>Lineup Page</h1>";
  },"useData":true});
templates['login'] = template({"compiler":[6,">= 2.0.0-beta.1"],"main":function(depth0,helpers,partials,data) {
  return "<div class=\"header\">\r\n	<h2>Log in</h2>\r\n</div>\r\n<form method=\"post\" action=\"/login\" role=\"form\">  \r\n	<div class=\"form-group\">\r\n	    <label for=\"email-input\" class=\"control-label\">Email address</label>\r\n		<input id=\"email-input\" name=\"session[email]\" class=\"form-control\" type=\"text\"/>\r\n	</div>\r\n 	<div class=\"form-group\">\r\n		<label for=\"password-input\" class=\"control-label\">Password</label>\r\n		<input id=\"password-input\" name=\"session[password]\" class=\"form-control\" type=\"password\"/>\r\n	</div>\r\n 	<div class=\"form-group\">\r\n	    <button type=\"submit\" class=\"btn btn-theme-1 col-xs-6 submit\">Log in</button>\r\n	    <a id=\"need-account\" href=\"\" class=\"col-xs-12\">Need an account?</a>\r\n	</div>\r\n</form>";
  },"useData":true});
templates['navigation'] = template({"compiler":[6,">= 2.0.0-beta.1"],"main":function(depth0,helpers,partials,data) {
  return "<nav class=\"navbar navbar-inverse navbar-static-top\" role=\"navigation\">\r\n  <div class=\"container\">\r\n    <div class=\"navbar-header\">\r\n      <a id=\"navbar-brand\" class=\"navbar-brand\" href=\"\">Daily LCS</a>\r\n    </div>\r\n    <div id=\"navbar\" class=\"navbar-collapse collapse\">\r\n      <ul class=\"nav navbar-nav navbar-right\">\r\n        <li><a id=\"navbar-profile\" href=\"/profile\">Profile</a></li> \r\n        <li><a id=\"navbar-about\" href=\"/about\">About</a></li>       \r\n        <li><a id=\"navbar-login\" href=\"/login\">Login</a></li>\r\n      </ul>\r\n    </div>\r\n  </div>\r\n</nav>";
  },"useData":true});
templates['profile'] = template({"compiler":[6,">= 2.0.0-beta.1"],"main":function(depth0,helpers,partials,data) {
  return "<h1>Profile Page</h1>";
  },"useData":true});
templates['signup'] = template({"compiler":[6,">= 2.0.0-beta.1"],"main":function(depth0,helpers,partials,data) {
  return "<div class=\"header\">\r\n	<h2>Create an Account</h2>\r\n</div>\r\n<form method=\"post\" action=\"/users\" role=\"form\">\r\n	<div class=\"form-group\">\r\n		<label for=\"username-input\" class=\"control-label\">Username</label>\r\n		<input id=\"username-input\" name=\"user[username]\" class=\"form-control\" type=\"text\"/>\r\n	</div>\r\n	<div class=\"form-group\">\r\n	    <label for=\"email-input\" class=\"control-label\">Email address</label>\r\n		<input id=\"email-input\" name=\"user[email]\" class=\"form-control\" type=\"text\"/>\r\n	</div>\r\n	<div class=\"form-group\">\r\n		<label for=\"password-input\" class=\"control-label\">Password</label>\r\n		<input id=\"password-input\" name=\"user[password]\" class=\"form-control\" type=\"password\"/>\r\n	</div>\r\n	<div class=\"form-group\">\r\n	    <button type=\"submit\" class=\"btn btn-theme-1 col-xs-6 submit\">Register</button>\r\n		<br/>\r\n	    <a id=\"have-account\" href=\"\" class=\"col-xs-12\">Already have an account?</a>\r\n	</div>\r\n</form>";
  },"useData":true});
templates['welcome'] = template({"compiler":[6,">= 2.0.0-beta.1"],"main":function(depth0,helpers,partials,data) {
  return "";
},"useData":true});
})();
