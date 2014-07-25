function EmployeeController($scope, EmployeesService, StateDistrictService) {
    $scope.Employees = [];
    $scope.NewEmployee = {};
    $scope.States = [];
    $scope.Districs = [];
    $scope.Designations = [];
    // ************************* Get All Employees List *************************************
    $scope.GetAllEmployees = function () {
        myApp.showPleaseWait();
        EmployeesService.GetEmployees().then(function (response) {
            if (response.status === 200)
                $scope.Employees = response.data;
            myApp.hidePleaseWait();
        });
    }
    $scope.GetAllEmployees();
    // ***************************Get All Employees List ************************************

    //***************************Create Employee start **************************************
    $scope.SaveEmployeeDetails = function (NewEmployee) {
        EmployeesService.CreateEmployee(NewEmployee).then(function (response) {
            if (response.status === 200 && response.data>0)
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
    // ************************Get list of all states end ************************************


    //************************Open create employee modal popup start *************************
    $scope.OpenCreateEmployeeModalPopup = function () {

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
    // ************************Get list of all designations end *******************************

}