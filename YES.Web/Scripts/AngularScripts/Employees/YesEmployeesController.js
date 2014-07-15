function EmployeeController($scope, EmployeesService) {
    $scope.Employees = [];

    // ************************* Get All Employees List ********************************
    $scope.GetAllEmployees=function () {
        EmployeesService.getEmployees().then(function (response) {
            $scope.Employees = response.data;
        });
    }
    $scope.GetAllEmployees();
    // ***************************Get All Employees List ************************************8
}