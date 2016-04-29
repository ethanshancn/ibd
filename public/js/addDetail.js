/**
 * Created by Ethan on 2016/4/29.
 */
var addDetail = {
    init : function () {
        var _this = this;
        
        _this.bindAction();
    },

    bindAction : function () {
        $('.datetimepicker').datepicker({
            format: "yyyy-mm-dd"
        })
    }
}
