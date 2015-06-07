
function SubjectsController($scope, SubjectsService) {

    // ******************** Get All subject details Start ********************
    $scope.GetAllSubjects = function () {
        SubjectsService.GetAllSubjects().then(function (response) {
            myApp.showPleaseWait();
            if (response.status === 200)
                $scope.Subjects = response.data;
           // $scope.Paging($scope.Subjects);
            myApp.hidePleaseWait();
        });
    }
    $scope.GetAllSubjects();
    // ******************** Get All subject details End ********************
    // ******************** Save subject details Start ********************
    $scope.SaveSubjectDetails = function () {
        SubjectsService.SaveSubjectDetails().then(function (response) {
            myApp.showPleaseWait();
            if (response.status === 200)
                $scope.Subjects = response.data;
            // $scope.Paging($scope.Subjects);
            myApp.hidePleaseWait();
        });
    }
    $scope.GetAllSubjects();
    // ******************** Save subject details End ********************
}