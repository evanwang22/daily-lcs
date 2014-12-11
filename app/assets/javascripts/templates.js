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
templates['navigation'] = template({"compiler":[6,">= 2.0.0-beta.1"],"main":function(depth0,helpers,partials,data) {
  return "<nav class=\"navbar navbar-default navbar-static-top\" role=\"navigation\">\r\n  <div class=\"container\">\r\n    <div class=\"navbar-header\">\r\n      <a id=\"navbar-brand\" class=\"navbar-brand\" href=\"\">Daily LCS</a>\r\n    </div>\r\n    <div id=\"navbar\" class=\"navbar-collapse collapse\">\r\n      <ul class=\"nav navbar-nav navbar-right\">\r\n        <li><a id=\"navbar-profile\" href=\"/profile\">Profile</a></li> \r\n        <li><a id=\"navbar-about\" href=\"/about\">About</a></li>       \r\n        <li><a id=\"navbar-login\" href=\"/login\">Login</a></li>\r\n      </ul>\r\n    </div>\r\n  </div>\r\n</nav>";
  },"useData":true});
templates['profile'] = template({"compiler":[6,">= 2.0.0-beta.1"],"main":function(depth0,helpers,partials,data) {
  return "<h1>Profile Page</h1>";
  },"useData":true});
templates['welcome'] = template({"compiler":[6,">= 2.0.0-beta.1"],"main":function(depth0,helpers,partials,data) {
  return "<h1>Welcome Page</h1>";
  },"useData":true});
})();
