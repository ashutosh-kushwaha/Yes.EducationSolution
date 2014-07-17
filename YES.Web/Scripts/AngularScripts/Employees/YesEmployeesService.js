
yesApp.factory('EmployeesService', function ($http) {
    return {
        // Get all the list of employees from the web api call
        GetEmployees: function () {

            var promise = $http({ method: 'GET', url: 'api/Employee/GetAllEmployees' }).
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
    // *********************** Create new employees record start***************************
    return {
        CreateEmployee: function (NewEmployee) {

            var promise = $http({ method: 'POST', url: 'api/Employee/CreateEmployee', data: NewEmployee }).
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

    // *******************************Create employees end
});
