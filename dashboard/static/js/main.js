// Generated by CoffeeScript 1.3.3
(function() {

  $(function() {
    var reload;
    reload = function(state) {
      if (state === "LOAD") {
        return location.reload(true);
      } else {
        return setTimeout(reload, 20000, "LOAD");
      }
    };
    return reload("NEW");
  });

}).call(this);
