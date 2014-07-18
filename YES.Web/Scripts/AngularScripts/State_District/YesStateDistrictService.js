﻿

yesApp.factory('StateDistrictService', function ($http) {
    return {
        // Get all the list of employees from the web api call
        GetAllStates: function () {

            var promise = $http({ method: 'GET', url: 'api/StateDistrict/GetAllStates' }).
                success(function (data, status, headers, config) {
                    // this callback will be called asynchronously
                    // when the response is available
                    return data;

                }).
                error(function (data, status, headers, config) {
                    // called asynchronously if an error occurs
                    // or server returns response with an error status.
                    return { 'status': false };
                });
            return promise;
        }
    };
});