function EmployeeController($scope, EmployeesService, StateDistrictService) {
    $scope.Employees = [];
    $scope.NewEmployee = {};
    $scope.States = [];
    $scope.Districs = [];
    $scope.Designations = [];
    $scope.IsEditMode = false;
    // ************************* Get All Employees List *************************************
    $scope.GetAllEmployees = function () {
        myApp.showPleaseWait();
        EmployeesService.GetEmployees().then(function (response) {
            if (response.status === 200)
                $scope.Employees = response.data;
            $scope.Paging($scope.Employees);
            myApp.hidePleaseWait();
        });
    }
    $scope.GetAllEmployees();

    // ***************************Get All Employees List ************************************

    //***************************Create Employee start **************************************
    $scope.SaveEmployeeDetails = function (NewEmployee) {
        EmployeesService.CreateEmployee(NewEmployee).then(function (response) {
            if (response.status === 200 && response.data > 0)
                $('#employee-modal').modal('hide');
            $scope.GetAllEmployees();
        });
    }

    //**************************Create Employee end ******************************************
    //*************************Get list of all districts for given state start****************
    $scope.GetAllDistricts = function (StateID) {
        StateDistrictService.GetAllDistricts(StateID).then(function (response) {
            if (response.status == 200) {
                $scope.Districts = response.data;
                if ($scope.Districts.length > 0)
                    $scope.NewEmployee.DistrictID = $scope.Districts[0].Key;
            }

        });
    }
    // ************************Get list of all districts for given state end *****************
    //*************************Get list of all states start***********************************
    $scope.GetAllStates = function () {
        StateDistrictService.GetAllStates().then(function (response) {
            if (response.status == 200) {
                $scope.States = response.data;
                if ($scope.States.length > 0) {
                    $scope.NewEmployee.StateID = $scope.States[0].Key; //Set default state
                    $scope.GetAllDistricts($scope.NewEmployee.StateID);// Pass default StateID
                }
            }

        });
    }
    $scope.GetAllStates();
    // ************************Get list of all states end ************************************


    //************************Open create employee modal popup start *************************
    $scope.OpenCreateEmployeeModalPopup = function () {
        $scope.IsEditMode = false;
        $scope.NewEmployee = {};
        $scope.GetAllStates();
        $scope.GetAllDesignations();
    }
    //************************Open create employee modal popup end ***************************
    //*************************Get list of all designations start*****************************
    $scope.GetAllDesignations = function () {
        EmployeesService.GetAllDesignations().then(function (response) {
            if (response.status == 200) {
                $scope.Designations = response.data;
                if ($scope.Designations.length > 0) {
                    $scope.NewEmployee.DesignationID = $scope.Designations[0].Key; //Set default designation
                }
            }

        });
    }
    $scope.GetAllDesignations();
    // ************************Get list of all designations end ******************************

    // ************************Get employee details for edit start ******************************
    $scope.GetEmployee = function (EmployeeID,StateID) {
        myApp.showPleaseWait();
        $scope.NewEmployee = {};// Clean Employee container
        $scope.GetAllDistricts(StateID);
        EmployeesService.GetEmployee(EmployeeID).then(function (response) {
            if (response.status === 200 && response.data.ID > 0) {
                $('#employee-modal').modal('show');
                $scope.NewEmployee = response.data;// Bind all data to the modal form
                //Mobile number is comming as string and text box is of type number
                $scope.NewEmployee.MobileNo = Number(response.data.MobileNo);
                if (response.data.AlternateMobileNo!=null)
                $scope.NewEmployee.AlternateMobileNo = Number(response.data.AlternateMobileNo);
                $scope.IsEditMode = true;
                myApp.hidePleaseWait();
              
            }
        });

    }
    // ************************Get employee details for edit end ******************************


    // ************************Delete employee details start ******************************
    $scope.DeleteEmployee = function (EmployeeID) {
        myApp.showPleaseWait();
        EmployeesService.DeleteEmployee(EmployeeID).then(function (response) {
            if (response.status === 200 && response.data > 0) {
                $scope.GetAllEmployees();
                myApp.hidePleaseWait();
            }
        });

    }
    // ************************Delete employee details  end ******************************

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
        $scope.PageSize = 10;
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
        $scope.Start = ($scope.PageSize * (pageNumber - 1))-1; // subtract one because ng-repeat on view is working on index basis
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


}