

function StudentsController($scope, StudentsService, StateDistrictService) {

    $scope.Students = [];
    // ************************* Get All Studets List *************************************
    $scope.GetAllStudents = function () {
        myApp.showPleaseWait();
        StudentsService.GetStudents().then(function (response) {
            if (response.status === 200)
                $scope.Students = response.data;
            $scope.Paging($scope.Students);
            myApp.hidePleaseWait();
        });
    }
    $scope.GetAllStudents();

    // ***************************Get All Students List ************************************
    //***************************Create Student start **************************************
    $scope.SaveStudentDetails = function (NewStudent) {
        StudentsService.CreateStudent(NewStudent).then(function (response) {
            if (response.status === 200 && response.data > 0)
                $('#student-modal').modal('hide');
            $scope.GetAllStudents();
        });
    }

    //**************************Create Employee end ******************************************
    // ************************ Paging Start************************************
    $scope.FirstPage = {};
    $scope.LastPage = {};
    $scope.CurrentPage = {};
    $scope.PageSize = {};
    $scope.TotalNumberOfPages = {};
    $scope.PagingArray = {};

    $scope.Paging = function (ListCollection) {
        $scope.FirstPage = false;
        $scope.LastPage = false;
        $scope.CurrentPage = 1;
        $scope.PageSize = 5;
        $scope.Start = -1;
        $scope.End = $scope.PageSize;

        $scope.TotalNumberOfPages = Math.floor(ListCollection.length / $scope.PageSize); // Get the absolute number of devidend
        var quotient = ListCollection.length % $scope.PageSize;
        if (quotient > 0)// If quotient>0 then need to draw one extra page
            $scope.PagingArray = new Array($scope.TotalNumberOfPages + 1); // No. of pages are 
        else // If quotient is zoro then need to draw exact page no.
            $scope.PagingArray = new Array($scope.TotalNumberOfPages); // No. of pages are 
        // Initialising array
        if ($scope.TotalNumberOfPages > 0) // Only current page is greater than one will show the previous button
            $scope.LastPage = true;

    }

    $scope.PageChange = function (pageNumber) {
        $scope.Start = ($scope.PageSize * (pageNumber - 1)) - 1; // subtract one because ng-repeat on view is working on index basis
        $scope.End = $scope.PageSize * pageNumber;
        if (pageNumber > 1) // If landing on other than one page show previous button
            $scope.FirstPage = true;
        else
            $scope.FirstPage = false;

        if (pageNumber == $scope.TotalNumberOfPages + 1)
            $scope.LastPage = false;
        else
            $scope.LastPage = true;

        $scope.CurrentPage = pageNumber; // Set current page with page number
    }
    //************************* Paging End *****************************//
};