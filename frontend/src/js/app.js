import 'jquery';
import 'lodash';
require('angular');

require('bootstrap');
require('@uirouter/angularjs');
require('angular-ui-bootstrap');
require('angular-resource');

import 'bootstrap/dist/css/bootstrap.css';
import 'bootstrap/dist/css/bootstrap-theme.css';
import 'bootstrap/dist/css/bootstrap.css';
import 'bootstrap';

import '../css/style.scss';

import './components/poster/poster.module';
import './directives/highchart/highchart.directive';

const app = angular.module('app', [
    'ui.router',
    'ui.bootstrap',
    'posterModule',
    'ngResource'
])
    .component('mainComponent', {
    template: require('./app.tmpl.html'),
    controller: function() {
        let ctrl = this;
    }
});

app.run(run).config(['$urlRouterProvider', '$stateProvider', '$httpProvider', function ($urlRouterProvider, $stateProvider, $httpProvider) {
    $httpProvider.defaults.headers.common["X-Requested-With"] = 'XMLHttpRequest';

    $urlRouterProvider.when('', '/poster');
    $stateProvider
        .state('app', {
            url: '',
            component: 'mainComponent'
        });
}]);

app.run(run);

run.$inject = ['$rootScope', '$state', '$stateParams'];

function run($rootScope, $state, $stateParams) {
    $rootScope.$state = $state;
    $rootScope.$stateParams = $stateParams;
}