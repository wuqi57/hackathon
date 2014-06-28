/**
 * @file 
 * @author wuqi03(wuqi03@baidu.com)
 */

define(function (require) {

    var ajax = require('saber-ajax/ejson');

    var config = {};
    var backUrl;

    config.fetch = function (query) {
        var id = query.id;
        var url = 'test/' + id + '_talk_left.json';

        backUrl = '#/search/' + id;
        return ajax.get(url).success(
            function (data) {

                return {
                    data: data,
                    title: id,
                    back: backUrl
                };
            }
        );
    };

    return config;

});
