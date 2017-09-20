module.exports = (app) => {
    app.component('poster', {
        template: require('./poster.component.html'),
        controller: posterComponentController
    })


    posterComponentController.inject = ['$scope', '$state', '$uibModal'];
    function posterComponentController($scope, $state, $uibModal) {
        let ctrl = this;


        ctrl.$ngOnInit = () => {

        }
    }

}