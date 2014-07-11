function EmployeeController($scope, EmployeesService) {
    $scope.Employees = [];
    $scope.Create=function () {
        //EmployeesService.getEmployees().then(function (response) {
        //    console.log('success');
        //});
        EmployeesService.getEmployees();
    } 
}