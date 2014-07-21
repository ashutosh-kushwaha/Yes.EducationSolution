

yesApp.factory('StateDistrictService', function ($http) {
    var StateDistrictfactory = {};
   
        // Get all the list of states from the web api call
        StateDistrictfactory.GetAllStates= function () {

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

   

    // *********************Get all districts for a given state******************
   
        // Get all the list of districts from the web api call
    StateDistrictfactory.GetAllDistricts= function (StateID) {

            var promise = $http({ method: 'GET', url: 'api/StateDistrict/GetAllDistricts/'+StateID}).
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
    return StateDistrictfactory;
});