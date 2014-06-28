/**
 * @file 
 * @author wuqi03(wuqi03@baidu.com)
 */

define(function (require) {

    var config = {};
    var dom = require('saber-dom');

    config.template = require('./detail.tpl');

    config.domEvents = {
        'click: .talk-detail-item-op' : function (ele) {
            if (dom.hasClass(ele, 'talk-detail-open')) {
                dom.removeClass(ele, 'talk-detail-open');
            }
            else {
                dom.addClass(ele, 'talk-detail-open');
            }
        }
    };

    return config;

});
