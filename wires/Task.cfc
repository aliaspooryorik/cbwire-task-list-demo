component extends="cbwire.models.Component" {

    data = {
        "id": "",
        "name": "",
        "complete": false
    };

    function remove() {
        dispatch( "removeTask", [ data.id ] );
    }

    function flagComplete() {
        data.complete = !data.complete;
        dispatch( "completeTask", [ data.id ] );
    }

    function reopen(){
        data.complete = !data.complete;
        dispatch( "reopenTask", [ data.id ] );
    }

}