/**
 * @file app
 * @author wuqi03(wuqi03@baidu.com)
 */

define(function (require) {

    var Resolver = require('saber-promise');
    var firework = require('saber-firework');

    // 使用slide转场效果
    var slide = require('saber-viewport/transition/slide');

    // FIXME
    // Only For Debug
    // 关闭Promise的异常捕获，方便调试
    Resolver.disableExceptionCapture();

    // saber-firework全局配置信息
    var config = {
            // 加载公共模版
            template: require('./common/commonTpl.tpl'),

            viewport: {
                transition: 'slide'
            },

            processor: {
                // 处理转场的方向
                transition: function (back, front) {
                    var options = {};
                    // 页面初始化时没有原始的route信息
                    front = front || {};
                    if (back.index && front.index) {
                        options.direction = back.index > front.index
                                            ? slide.RIGHT
                                            : slide.LEFT;
                    }
                    return options;
                }
            }
        };

    // 加载路由配置
    firework.load(require('./config'));

    return {
        init: function () {
            // 启动应用
            firework.start('viewport', config);
        }
    };

});
