module.exports = (app) => {
    app.config(['$stateProvider', function($stateProvider) {
        $stateProvider
            .state('app.poster', {
                url: '/poster',
                component: 'poster'
            })
    }])
}