## 一.VIPER架构及TDD简介
 
  VIPER把MVC中的Controller进一步拆分成了Presenter、Router和Interactor。和MVP中负责业务逻辑的Presenter不同，
VIPER的Presenter的主要工作是在View和Interactor之间传递事件，并管理一些View的展示逻辑，主要的业务逻辑实现代码都放在了Interactor里。
Interactor的设计里提出了"用例"的概念，也就是把每一个会出现的业务流程封装好，这样可测试性会大大提高。而Router则进一步解决了不同模块之间的耦合
#### 1.解释
V：view/controller - 视图
I：Interactor - 用例及逻辑处理，提供数据支持
P：Presenter - 接口层，只提供view跟Interactor之间的逻辑交互，向Interactor索要数据提供给view及view的事件反馈
E：Entity - 实例，model
R：Route - 路由，提供界面跳转及模块间调用
#### 2.优点
 ##### 2.1 VIPER的特色就是职责明确，粒度细，隔离关系明确
 ##### 2.2 可测试性好。UI测试和业务逻辑测试可以各自单独进行。
 ##### 2.3 易于迭代。各部分遵循单一职责，可以很明确地知道新的代码应该放在哪里。
 ##### 2.4 隔离程度高，耦合程度低。一个模块的代码不容易影响到另一个模块。
 ##### 2.5 易于团队合作。各部分分工明确，团队合作时易于统一代码风格，可以快速接手别人的代码。
#### 3.缺点
  一个模块内的类数量增大，代码量增大，在层与层之间需要花更多时间设计接口。
使用代码模板来自动生成文件和模板代码可以减少很多重复劳动，而花费时间设计和编写接口是减少耦合的路上不可避免的，你也可以使用数据绑定这样的技术来减少一些传递的层次。

## 二.VIPER架构图
#### 1.原始图
![VIPER-Origin](https://github.com/)
#### 2.改进图
![VIPER-New](https://github.com/)
