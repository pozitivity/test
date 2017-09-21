var Highcharts = require('highcharts');

module.exports = (app) => {
    app.directive('highchart', directive)
        .controller('HighChartController', HighChartController);

    function directive() {
        return {
            restrict: 'E',
            scope: {
                options: '='
            },
            bindToController: {
                options: '='
            },
            template: require('./highchart.tmpl.html'),
            controller: HighChartController,
            controllerAs: 'ctrl'
        }
    }

    HighChartController.$inject = ['$scope'];
    function HighChartController($scope) {

        let chart;
        let prevOptions = {};

        $scope.$watch(() => { return $scope.options }, (newValue) => {
            if (newValue.renderTo === "view") {
                chart = new Highcharts.chart(newValue.renderTo, newValue.chart);
            }

            if (newValue.renderTo === "compare") {
                if (!chart && newValue.chart.series.length === 1) {
                    chart = new Highcharts.chart(newValue.renderTo, newValue.chart);
                } else {
                    prevOptions = angular.merge({}, newValue.chart);

                    let chartUserOptions = chart.series.map(s => s.userOptions);
                    // add new series
                    if (chartUserOptions.length < newValue.chart.series.length) {
                        angular.forEach(newValue.chart.series, function (s) {
                            if (!chartUserOptions.find(cuo => cuo.uuid === s.uuid)) {
                                chart.addSeries(s);
                            }
                        });
                        chart.update(prevOptions, true);
                    }

                    // remove deleted series
                    if (chartUserOptions.length > newValue.chart.series.length) {
                        angular.forEach(chartUserOptions, function (cuos) {
                            if (!newValue.chart.series.find(s => s.uuid === cuos.uuid)) {
                                chart.series.find(s => s.userOptions === cuos).remove(true);
                            }
                        });
                    }
                }
            }
        }, true);
    }
}