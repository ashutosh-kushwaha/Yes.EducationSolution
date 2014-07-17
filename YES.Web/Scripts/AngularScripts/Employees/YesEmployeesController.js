function EmployeeController($scope, EmployeesService) {
    $scope.Employees = [];
    $scope.NewEmployee = {};
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
}