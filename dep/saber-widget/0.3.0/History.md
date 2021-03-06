0.3.0 / 2014-06-24
==================

* 新增 `单选组` 控件 `RadioGroup`
* **调整** 主模块的 `控件快捷初始化` API命名方式为 `首字母小写`的`驼峰`形式。如控件 `ImageView` 对应 `widget.imageView(..)`


0.2.3 / 2014-06-23
==================

* 增加 `base` 模块组, 内置 `state`、`dom`、`event`、`attribute` 基础抽象方法集
* 基类 `Widget`、`Plugin` 解耦、优化
* **移除** 插件 `Zoom`
* **优化** 控件`ImageView`、`Slider` 的手势支持，引入 `hammer.js`


0.2.2 / 2014-06-18
==================

* 基类 `Widget` 初始化配置 **增加** 同名方法重载支持


0.2.1 / 2014-06-17
==================

* 修复插件 `Zoom` 缩放动画失效的BUG


0.2.0 / 2014-06-16
==================

* **移除** 模块 `lib`, API 移植到 `saber-lang/type`
* `Widget` **增加** 新API `plugin`、`enablePlugin`、`disablePlugin`
* **增加** 新控件 `ImageView`、`LazyLoad`、`Suggestion`
* **增加** 插件基类 `Plugin`, 及新插件 `Masker`、`Zoom`
* 更新文档及DEMO


0.1.1 / 2014-06-04
==================

* `主模块` **增加** `控件快捷初始化` 支持, 如 `widget.slider( main, options )`
* 更新 测试用例的初始化方式为 `快捷初始化`
* 更新 API文档
