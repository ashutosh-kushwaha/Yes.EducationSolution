
var myApp;

myApp = myApp || (function () {
    // var pleaseWaitDiv = $('<div class="modal hide" id="pleaseWaitDialog" data-backdrop="static" data-keyboard="false"><div class="modal-header"><h1>Processing...</h1></div><div class="modal-body"><div class="progress progress-striped active"><div class="bar" style="width: 100%;"></div></div></div></div>');
    return {
        ShowCallCount: 0,
        showPleaseWait: function () {
            $('#pleaseWaitDialog').modal('show');
            myApp.ShowCallCount++;
        },
        hidePleaseWait: function () {
            if (myApp.ShowCallCount === 0) {
                $('#pleaseWaitDialog').modal('hide');
                myApp.ShowCallCount--;
            }
            else
                myApp.ShowCallCount--;
        },

    };
})();
