if (!gadgets || !gadgets.rpc) {
  throw "Please include gadgets.rpc before embeddables.js";
}

var Embeddables = (function () {
  var that = {};

  that.on = function (event, callback) {
    gadgets.rpc.register(event, callback);
  };

  that.trigger = function (event, data) {
    gadgets.rpc.call(null, event, null, data);
  };

  return that;
})();