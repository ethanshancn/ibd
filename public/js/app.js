/**
 * 未登录情况下的前端全局文件
 * Created by Ethan on 2016/4/1.
 */
var app = {
    init : function () {
        var _this = this;

        _this.addGlobalFunction();
        _this.toggleTooltip();
    },

    addGlobalFunction : function () {
        $.fn.serializeObject = function()
        {
            var o = {};
            var a = this.serializeArray();
            $.each(a, function() {
                if (o[this.name]) {
                    if (!o[this.name].push) {
                        o[this.name] = [o[this.name]];
                    }
                    o[this.name].push(this.value || '');
                } else {
                    o[this.name] = this.value || '';
                }
            });
            return o;
        };
        $.fn.tile = function(columns) {
            var tiles, max, c, h, last = this.length - 1, s;
            if(!columns) columns = this.length;
            this.each(function() {
                s = this.style;
                if(s.removeProperty) s.removeProperty("height");
                if(s.removeAttribute) s.removeAttribute("height");
            });
            return this.each(function(i) {
                c = i % columns;
                if(c == 0) tiles = [];
                tiles[c] = $(this);
                h = tiles[c].height();
                if(c == 0 || h > max) max = h;
                if(i == last || c == columns - 1)
                    $.each(tiles, function() { this.height(max); });
            });
        };
        $.getUrlParam = function (name) {
            var reg = new RegExp("(^|/)" + name + "/([^/]*)(/|/?|#)"); //构造一个含有目标参数的正则表达式对象
            var r = window.location.pathname.match(reg);  //匹配目标参数
            if (r != null) return decodeURIComponent(r[2]); return null; //返回参数值
        };
        $.closeWindow = function () {
            var userAgent = navigator.userAgent;
            if (userAgent.indexOf("Firefox") != -1 || userAgent.indexOf("Chrome") !=-1) {
                window.location.href="about:blank";
            } else {
                window.opener = null;
                window.open("", "_self");
                window.close();
            }
        }
    },
    toggleTooltip:function(){
         $('[data-toggle="tooltip"]').tooltip();
    }
}