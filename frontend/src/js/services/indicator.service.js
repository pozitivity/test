module.exports = (app) => {
    app.factory('indicatorService', ['$resource', function ($resource) {
        return $resource('/backend/api/indicator/:section/:parentId',{},{
            list: {
                method: 'GET',
                isArray: true
            },
            purpose: {
                method: 'GET',
                isArray: true,
                params: {
                    section: 'purpose'
                }
            },
            byParent: {
                method: 'GET',
                isArray: true,
                params: {
                    section: 'byparent',
                    parentId: '@parentId'
                }
            }
        });

    }]);
}