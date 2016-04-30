/**
 * Created by Ethan on 2016/4/29.
 */
var addDetail = {
    init : function () {
        var _this = this;
        
        _this.bindAction();
    },

    bindAction : function () {
        var _this = this;
        $('.datetimepicker').datepicker({
            format: "yyyy-mm-dd"
        });
        $(".add_input_control").click(function(){
            _this.addInputControl($(this));
        });
    },

    //增加input输入框
    addInputControl : function(obj){
        obj.parent().attr("rowspan",parseInt(obj.parent().attr("rowspan"))+1);
        var nextAll = obj.parent().nextAll();
        var str = '';
        for(var i = 0; i < nextAll.length; i ++)
        {
            str += nextAll[i].outerHTML;
        }
        obj.parent().parent().after('<tr>'+str+'</tr>');
    },

}
