import 'jquery';
import 'lodash';
require('angular');

require('bootstrap');
require('angular-ui-router');
require('angular-ui-bootstrap');

import 'bootstrap/dist/css/bootstrap.css';
import 'bootstrap/dist/css/bootstrap-theme.css';
import 'bootstrap/dist/css/bootstrap.css';
import 'bootstrap';

import '../css/style.scss';

const app = angular.module('app', [
    'ui.router',
    'ui.bootstrap'
]).component('mainComponent', {
    template: require('./app.tmpl.html'),
    controller: function() {
        let ctrl = this;
    }
});

app.run(run).config(['$urlRouterProvider', '$stateProvider', '$httpProvider', function ($urlRouterProvider, $stateProvider, $httpProvider) {
    $httpProvider.defaults.headers.common["X-Requested-With"] = 'XMLHttpRequest';

    $urlRouterProvider.when('', '/test');
    //$urlRouterProvider.otherwise('/menu');
    $stateProvider
        .state('app', {
            url: '',
            component:'mainComponent'
        });
}]);

app.run(run);

run.$inject = ['$rootScope', '$state', '$stateParams'];

function run($rootScope, $state, $stateParams) {
    $rootScope.$state = $state;
    $rootScope.$stateParams = $stateParams;
}