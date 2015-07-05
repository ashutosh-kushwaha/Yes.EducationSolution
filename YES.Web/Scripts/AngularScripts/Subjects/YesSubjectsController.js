
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
    $scope.SaveSubjectDetails = function (newSubject) {
        SubjectsService.SaveSubjectDetails(newSubject).then(function (response) {
            myApp.showPleaseWait();
            if (response.status === 200)
                $('#subject-modal').modal('hide');
            $scope.GetAllSubjects();
            // $scope.Paging($scope.Subjects);
            myApp.hidePleaseWait();
           
        });
    }
   
    // ******************** Save subject details End ********************

    // ******************** Delete subject details Start ********************
    $scope.DeleteSubject = function (subjectID) {
        SubjectsService.DeleteSubject(subjectID).then(function (response) {
            myApp.showPleaseWait();
            if (response.status === 200)
            $scope.GetAllSubjects();
            // $scope.Paging($scope.Subjects);
            myApp.hidePleaseWait();

        });
    }

    // ******************** Save subject details End ********************

    //************************Open create employee modal popup start *************************
    $scope.OpenSubjectStudentModalPopup = function () {
        $scope.IsEditMode = false;
        $scope.NewSubjectStudent = {};
        
    }
    //************************Open create employee modal popup end ***************************


}