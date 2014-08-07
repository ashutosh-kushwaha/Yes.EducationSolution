var yesApp = angular.module('yesApp', []);
function LayoutController($scope) {
    myApp.hidePleaseWait();
}

// Cal Confirmation messagebefore any action. Will not execute ng-click after cancel confirmation
yesApp.directive('confirmationMessage', function () {
    return {
        priority: 1,
        terminal: true,
        link: function (scope, element, attr) {
            var msg = attr.confirmationMessage || "Are you sure?";
            var clickAction = attr.ngClick;
            element.bind('click', function () {
                if (window.confirm(msg)) {
                    scope.$eval(clickAction)
                }
            });
        }
    };
});

