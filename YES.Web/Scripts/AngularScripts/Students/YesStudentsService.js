
yesApp.factory('StudentsService', function ($http) {
    var StudentsServiceFactory = {};
    // Get all the list of employees from the web api call
    StudentsServiceFactory.GetStudents = function () {

        var promise = $http({ method: 'GET', url: 'api/Students/GetAllStudents' }).
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

    return StudentsServiceFactory;
});