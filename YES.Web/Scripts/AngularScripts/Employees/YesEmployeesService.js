
yesApp.factory('EmployeesService', function ($http) {
    var EmployeesServiceFactory = {};
    // Get all the list of employees from the web api call
    EmployeesServiceFactory.GetEmployees = function () {

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

    // *********************** Create new employees record start***************************

    EmployeesServiceFactory.CreateEmployee = function (NewEmployee) {

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
    // *******************************Create employees end **********************************
    // *********************** Create new employees record start***************************

    EmployeesServiceFactory.GetAllDesignations = function () {

        var promise = $http({ method: 'GET', url: 'api/Employee/GetAllDesignations'}).
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
    // *******************************Create employees end **********************************

    // Get an employees from the web api call
    EmployeesServiceFactory.GetEmployee = function (EmployeeID) {

        var promise = $http({ method: 'GET', url: 'api/Employee/GetEmployee/' + EmployeeID }).
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

    return EmployeesServiceFactory;
});
