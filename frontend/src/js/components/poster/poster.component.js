var Highcharts = require('highcharts');
module.exports = (app) => {
    app.component('poster', {
        template: require('./poster.component.html'),
        controller: posterComponentController
    });

    posterComponentController.$inject = ['$scope', '$state', 'districtService', 'indicatorService', 'scoreService'];
    function posterComponentController($scope, $state, districtService, indicatorService, scoreService) {
        let ctrl = this;

        ctrl.districts = [];
        ctrl.indicators = [];
        ctrl.purposeIndicators = [];
        ctrl.allIndicators = [];
        ctrl.scores = [];

        ctrl.compareOptions = {
            chart: {
                xAxis: {},
                series: [],
                title: {}
            }
        };

        ctrl.viewOptions = {
            chart: {
                xAxis: {},
                series: [],
                title: {}
            }
        };

        ctrl.$onInit = () => {

            ctrl.chartTypes = [
                "column", "line",  "bar", "area", "spline"
            ];
            ctrl.selectedChartType = ctrl.chartTypes[0];

            districtService.list({}, (districts) => {
                ctrl.districts = districts;
                ctrl.selectedDistrict = districts[0];

                indicatorService.list({}, (indicators) => {
                    ctrl.indicators = indicators.filter(i => i.parentId !== 0 && i.parentId !== 1);
                    ctrl.purposeIndicators = indicators.filter(i => i.parentId === 0 || i.parentId === 1);
                    if (ctrl.isSelectPurpose) {
                        ctrl.selectedIndicator = ctrl.purposeIndicators[0];
                    } else {
                        ctrl.selectedIndicator = ctrl.indicators[0];
                    }
                    ctrl.getDataForChart();
                });
            });
        };

        ctrl.selectDistrict = (district) => {
            ctrl.selectedDistrict = district;

            if (ctrl.selectedIndicator && ctrl.selectedChartType) {
                ctrl.getDataForChart();
            }
        };

        ctrl.selectIndicator = (indicator) => {
            ctrl.selectedIndicator = indicator;

            if (ctrl.selectedDistrict && ctrl.selectedChartType) {
                ctrl.getDataForChart();
            }
        };

        ctrl.selectChartType = (chartType) => {
            ctrl.selectedChartType = chartType;

            if (ctrl.selectedDistrict && ctrl.selectedIndicator) {
                ctrl.getDataForChart();
            }
        };

        ctrl.getDataForChart = () => {
            scoreService.get({ districtId: ctrl.selectedDistrict.id, indicatorId: ctrl.selectedIndicator.id }, (scores) => {
                ctrl.scores = scores;

                let color = getRandomColor();
                ctrl.viewOptions.renderTo = "view";
                ctrl.viewOptions.chart.series = [
                    {
                        data: Object.values(scores.valueByYear),
                        name: ctrl.selectedDistrict.shortName,
                        type: ctrl.selectedChartType,
                        borderColor: color,
                        color: color
                    }
                ];
                ctrl.viewOptions.chart.xAxis.categories = Object.getOwnPropertyNames(scores.valueByYear);
                ctrl.viewOptions.chart.title.text = "Просмотр";
            });
        }

        ctrl.addSeries = () => {
            let color = getRandomColor();
            ctrl.compareOptions.renderTo = "compare";
            ctrl.compareOptions.chart.series.push({
                data: Object.values(ctrl.scores.valueByYear),
                name: ctrl.selectedDistrict.shortName + ' - ' + ctrl.selectedIndicator.name,
                type: ctrl.selectedChartType,
                borderColor: color,
                color: color,
                uuid: getRandomUUID()
            });
            ctrl.compareOptions.chart.xAxis.categories = Object.getOwnPropertyNames(ctrl.scores.valueByYear);
            ctrl.compareOptions.chart.title.text = "Сравнение целей";
        }

        ctrl.deleteSeries = (uuid) => {
            let series = ctrl.compareOptions.chart.series.find(s => s.uuid === uuid);
            ctrl.compareOptions.chart.series.splice(ctrl.compareOptions.chart.series.indexOf(series), 1);
        };

        function getRandomColor() {
            var letters = '0123456789ABCDEF';
            var color = '#';
            for (var i = 0; i < 6; i++) {
                color += letters[Math.floor(Math.random() * 16)];
            }
            return color;
        }

        function getRandomUUID() {
            return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
                var r = Math.random() * 16 | 0, v = c == 'x' ? r : (r & 0x3 | 0x8);
                return v.toString(16);
            });
        }
    }

}