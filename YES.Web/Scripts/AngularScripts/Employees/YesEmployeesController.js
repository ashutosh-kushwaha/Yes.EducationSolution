function EmployeeController($scope, EmployeesService) {
    $scope.Employees = [];
    $scope.NewEmployee = {};
    // ************************* Get All Employees List ********************************
    $scope.GetAllEmployees=function () {
        EmployeesService.getEmployees().then(function (response) {
            $scope.Employees = response.data;
        });
    }
    $scope.GetAllEmployees();
    // ***************************Get All Employees List ************************************

    //***************************Create Employee start ************************************
    $scope.CreateEmployee = function () {
    
    }

    //**************************Create Employee end ***************************************
}