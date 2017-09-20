module.exports = (app) => {
    app.factory('scoreService', ['$resource', function ($resource) {
        return $resource('/backend/api/score/:bydistrict/:districtId/:byindicator/:indicatorId',{},{
            list: {
                method: 'GET',
                isArray: true
            },
            get: {
                method: 'GET',
                isArray: false,
                params: {
                    bydistrict: 'bydistrict',
                    districtId: '@districtId',
                    byindicator: 'byindicator',
                    indicatorId: '@indicatorId'
                }
            }
        });

    }]);
}