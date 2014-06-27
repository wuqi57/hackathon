# saber-ajax [![Build Status](https://travis-ci.org/ecomfe/saber-ajax.png)](https://travis-ci.org/ecomfe/saber-ajax)

适用于移动端、promise风格的ajax封装，支持[XMLHttpRequest2](http://www.w3.org/TR/XMLHttpRequest2/)

<del>以<a href="http://baike.baidu.com/view/8420590.htm" target="_blank">吾王</a>之名~</del>

## Usage

通过`edp`引入模块

    $ edp import saber-ajax

```javascript
var request = ajax.get(url);
request.then(
    // 请求完成
    // data为responseText
    function (data) {
        renderData(data);
    },

    // 请求失败
    // error参数可能为以下四种情况
    // * 请求超时: 'timeout'
    // * 请求中止: 'abort'
    // * 未知错误: 'error'
    // * 其它情况: HTTP Status Code
    function (error) {
        showError(error);
    }
);
```

## API

### get( url , query )

发起异步GET请求，返回`Request`对象

* `url` `{string}` 请求地址
* `query` `{Object=}` 查询条件，可选。会自动进行`encodeURIComponent`处理

### post( url, data )

发起异步POST请求，返回`Request`对象

* `url` `{string}` 请求地址
* `data` `{Object|string=}` 请求数据，可选。支持以下类型：
    * `{string}` 不会对参数进行任何处理，需要注意自行进行`encodeURIComponent`处理
    * `{Object}` 会自动进行URL参数序列化并对各`value`进行`encodeURIComponent`处理，**注意** 暂时只支持单一层级序列化，不支持多层级（比如`{date: {begin: '2012', end: '2013'}}`）

### request( url, options )

发起请求，`options`配置项参数为可选

* `options.method` `{string=}` 请求方式，默认为`'GET'`
* `options.data` `{string|Object=}` 请求参数，支持[FormData](http://www.w3.org/TR/XMLHttpRequest2/#interface-formdata)
* `options.stringify` `{boolean=}` 是否自动序列化请求参数，默认为`true`
* `options.async` `{boolean=}` 是否异步请求，默认为`true`
* `options.headers` `{Object=}` 需要额外设置的请求头
* `options.timeout` `{number=)` 请求超时时间，单位ms，**注意** 只有异步请求才有效
* `options.username` `{string=}` 用户名
* `options.password` `{string=}` 密码
* `options.responseType` `{string=}` 返回的[数据类型](http://www.w3.org/TR/XMLHttpRequest2/#xmlhttprequestresponsetype)，默认为空。`text`与`arraybuffer`各浏览器的支持力度较好，其它选项使用前请多多思量~


### on( event, fn )

注册全局事件

* `event` `{string}` 事件名称，支持以下事件
    * `'success'` 请求成功事件，任意请求成功时触发
    * `'fail'` 请求失败事件，任意请求失败时触发
* `fn` `{Function(Requester,*)}` 事件处理函数，触发时带有两个参数
    * `{Requester}` 请求对应的[Requester](#requester)对象
    * `{*}` 请求成功时是请求的返回结果，请求失败时是错误信息（参考[request.then](#then-onfulfill-onreject-)关于错误信息的描述）

可以通过注册全局事件配合[requester.handleFail](#handlefail)来提供默认的请求失败处理，比如：

```javascript
var ajax = require('saber-ajax');

// 注册全局失败事件
ajax.on('fail', function (req, error) {
    // 如果当前的失败请求没有被处理过
    // 则显示默认的错误提示
    if (!req.handleFail) {
        alert('亲~请求失败啦');
    }
});
```

### Requester

`ajax.get`，`ajax.post`，`ajax.request`的返回参数，对`XMLHttpReqeust`的封装，实现了[Promise](https://github.com/ecomfe/saber-promise)接口

#### .url

`{string}` 请求地址

#### .xhr

`{XMLHttpRequest}` 原始的`XMLHttpRequest`对象

#### .handleSuccess

`{boolean}` 是否已处理请求成功的情况

#### .handleFail

`{boolean}` 是否已处理请求失败的情况

#### .then( onFulfill, onReject )

添加请求成功和失败的处理函数，请参考[Promise.then](https://github.com/ecomfe/saber-promise)

* `onFulfill` `{Function({*})=}` 请求成功处理，参数为请求的返回结果
* `onReject` `{Function({*})=}` 请求失败处理，参数为错误信息，有四种取值：
    * `'error'` `{string}` 未知错误
    * `'timeout'` `{string}` 请求超时
    * `'abort'` `{string}` 请求中止
    * `HTTP Status Code`: `{number}` 其它情况为请求返回的HTTP状态码

#### .success( success )

添加请求成功处理，相当于`.then(success)`

* `success` `{Function}` 成功处理函数

#### .fail( fail )

添加请求失败处理 相当于`.then(null, fail)`

* `fail` `{Function}` 失败处理函数

#### .ensure( callback )

添加请求完成处理函数，不论请求是成功还是失败都会被调用，相当于`.then(callback, callback)`

* `callback` `{Function}` 完成处理函数

#### .abort()

中止请求

## Test

启动测试服务器

    $ node test/server.js

默认端口为`8848`，可以通过参数修改：

    $ node test/server.js 8080

访问`http://localhost:8848/test/runner.html`

===

[![Saber](https://f.cloud.github.com/assets/157338/1485433/aeb5c72a-4714-11e3-87ae-7ef8ae66e605.png)](http://ecomfe.github.io/saber/)
