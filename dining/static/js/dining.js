// Generated by CoffeeScript 1.6.1

/* About
*/


/* License and Warranty
*/


(function() {
  var DiningWidget,
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  DiningWidget = (function(_super) {

    __extends(DiningWidget, _super);

    function DiningWidget() {
      return DiningWidget.__super__.constructor.apply(this, arguments);
    }

    DiningWidget.prototype.update = function() {
      console.log("Dining Widget");
      $.get('/dining', function(response) {
        return console.log(JSON.stringify(response));
      });
      return DiningWidget.__super__.update.apply(this, arguments);
    };

    return DiningWidget;

  })(this.Widget);

  new DiningWidget($('.events')[0], 10000);

}).call(this);
