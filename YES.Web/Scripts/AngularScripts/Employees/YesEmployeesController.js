function EmployeeController($scope, EmployeesService, StateDistrictService) {
    $scope.Employees = [];
    $scope.NewEmployee = {};
    $scope.States = [];
    // ************************* Get All Employees List ********************************
    $scope.GetAllEmployees=function () {
        EmployeesService.GetEmployees().then(function (response) {
            if(response.status===200)
            $scope.Employees = response.data;
        });
    }
    $scope.GetAllEmployees();
    // ***************************Get All Employees List ************************************

    //***************************Create Employee start ************************************
    $scope.SaveEmployeeDetails = function (NewEmployee) {
        EmployeesService.GetEmployees(NewEmployee).then(function (response) {
            if (response.status === 200)
                $('#employee-modal').modal('hide');
        });
    }

    //**************************Create Employee end ***************************************

    //*************************Get list of all states start***********************************
    $scope.GetAllStates = function () {
        StateDistrictService.GetAllStates().then(function (response) {
            if (response.status == 200) {
                $scope.States = response.data;
            }

        });
    }
    // ************************Get list of all states end ************************************
}