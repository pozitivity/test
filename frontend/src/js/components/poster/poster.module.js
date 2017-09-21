(function() {
    let module = angular.module('posterModule', []);

    require('./poster.component')(module);
    require('./poster.route')(module);
    require('../../services/district.service')(module);
    require('../../services/indicator.service')(module);
    require('../../services/score.service')(module);
    require('../../directives/highchart/highchart.directive')(module);
})();