/**
 * @file 路由配置
 * @author wuqi03(wuqi03@baidu.com)
 */

define(function (require) {

    return [
        {path: '/index', action: require('./index/index')},
        {path: '/list/index', action: require('./list/index')}
    ];

});
