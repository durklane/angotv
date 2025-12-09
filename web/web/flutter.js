var _flutter = {loader: {}};
_flutter.loader.loadEntrypoint = function (opt) {
  return import("./main.dart.js").then((module) => {
    return {
      initializeEngine: module.initializeEngine,
    };
  });
};
