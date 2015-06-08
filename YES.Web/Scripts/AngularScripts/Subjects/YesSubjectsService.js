

yesApp.factory('SubjectsService', function ($http) {
    var SubjectsServiceFactory = {};
    // Get all the list of Subjects from the web api call
    SubjectsServiceFactory.GetAllSubjects = function () {

        var promise = $http({ method: 'GET', url: 'api/Subjects/GetAllSubjects' }).
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

    // Save new subject into web api call
    SubjectsServiceFactory.SaveSubjectDetails = function (newSubject) {

        var promise = $http({ method: 'POST', url: 'api/Subjects/SaveSubjectDetails',data:newSubject }).
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

    // Save new subject into web api call
    SubjectsServiceFactory.DeleteSubject = function (subjectID) {

        var promise = $http({ method: 'POST', url: 'api/Subjects/DeleteSubject/'+ subjectID }).
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

    return SubjectsServiceFactory;
});