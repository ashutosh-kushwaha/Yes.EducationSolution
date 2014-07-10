function EmployeeController($scope, EmployeesService) {
    $scope.Create=function () {
        EmployeesService.getEmployees();
    } 
}