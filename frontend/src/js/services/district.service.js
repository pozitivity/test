module.exports = (app) => {
    app.factory('districtService', ['$resource', function ($resource) {
        return $resource('/backend/api/district',{},{
            list: {
                method: 'GET',
                isArray: true
            }
        });

    }]);
}