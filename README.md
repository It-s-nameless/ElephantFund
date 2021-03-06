# ElephantFund

项目名称：大象基金

![Elephant Fund](https://github.com/It-s-nameless/ElephantFund/blob/main/efund.png)

小组名称：就叫无名

小组成员：陈彬捷、王萍婷、林鸿、王云华、梁宇奇

功能定位：多功能的透明的一站式基金交易电商服务平台

产品连接：http://47.115.126.217:8080/eFund/Index

软件需求说明书连接：https://docs.qq.com/doc/DZkZpaGF6SWxDWmpC

云效需求管理地址：https://devops.aliyun.com/project/5f86d01354a6bc0048c9a6c8/story/section/all

项目成本估算：￥4430.00
***
2021年4月24日更新  *增加.travis.yml文件

2021年4月15日更新  *增加maven版本项目

2021年4月8日更新   *增加使用ant的build.xml

***

## 项目前期计划
### 项目准备阶段（2020.9.23）
结合相关材料分析项目主要内容；提供项目功能与对应解决方案；明确成员分工

### 文档撰写阶段（2020.9.24->2020.10.7）
完成项目基本信息、项目章程、项目管理范围等前期工作

### 关键技术研究（2020.10.8->2020.10.23）
分析相关算法理论与技术资料，撰写关键技术的解决方案

### 系统概要设计（2020.10.24->2020.10.31）
开发原型系统，验证关键技术；确定系统的功能模型及体系结构；制定详细的开发计划

### 编码呈现（2020.11.1->2021.11.15）
系统编码与算法实现；大象基金v1.0版发布

## 项目后期计划
### 系统详细设计（2020.11.16->2020.11.23）
完善用户平台；搭建运营管理平台；撰写系统详细设计报告

### 编码呈现（2020.11.24->2020.12.23）
系统编码与算法实现；大象基金v1.1版发布

### 系统测试（2020.12.24->2020.12.31）
制定项目测试计划；适当方式对系统功能进行测试

***
# 大象基金项目需求规格说明书
## 1.引言
### 1.1 目的
编写软件需求规格说明书的目的在于进一步剖析来自用户群体、管理群体及系统自身的需求，定制软件开发过程中的细节问题，使本软件在开发过程中更加清晰有序。

本说明书的主要读者为用户、软件开发者及分析人员，引导其加深对于软件初试规定的理解。它说明了本产品的各项功能需求、性能需求和数据要求，明确标识各功能的实现过程，阐述实用背景及范围，提供客户解决问题或达到目标所需的条件或权能，提供一个度量和遵循的基准。

### 1.2 适用范围
2013 年以来，互联网金融在短时间内得到了快速发展，第三方支付、P2P、众筹等业务模式迅猛发展，给传统金融业形成强大的冲击[1]。虽然发展时间不长，互联网金融作为一种具有创新性的金融实现形式，已经体现出诸多正面效应。随着经济社会的发展与人民生活水平的提高，理财作为一种新型的创收方式逐渐进入社会大众的生活中。加之近年来，通货膨胀的加快与银行利息停滞间的矛盾、股票市场与其不确定性性间的矛盾，促使基金消费作为一种普适性的理财消费行为受大众欢迎。

鹏华增值宝货币基金的上线，是京东互联网定制基金的首次尝试，为京东商城的大金融布局掀开了重要的一页。在3月7日的京东发布会上，京东金融资金业务部负责人刘长宏透露，京东近期将推出理财产品“小金库”。

鉴于此种情况，团队成员拟开发一款多功能的一站式基金交易电商服务平台。旨在为各层次用户提供多方位的基金服务，提升用户群体的基金购买效率与购买体验，节约因选择基金、浏览数据等浪费的时间成本，提升用户对基金理财的自信，提升对基金理财的掌控感。

### 1.3 参考资料
互联网金融的运作模式与发展策略研究	 山西财经大学	张小明	2015

基于电商平台的互联网理财产品风险问题研究	 云南大学	何泽婷	2015

鹏华增值宝牵手京东商城  互联网定制基金首次试水	股市动态分析	余周	2014

晨星基金网（网站）	 晨星资讯（深圳）有限公司	2004

## 2.系统概述
### 2.1 系统描述
本项目的目标是：

<1>简化多余功能及复杂的交互界面，满足新手用户快速入门的需求；

<2>以可视化的形式直观反映大盘指数趋势，给予用户更好的交互体验；

<3>收费条目清晰、屏蔽软件广告，提升用户使用平台的满意度；

<4>加入基金导购、趋势预测等特色服务，提升产品的用户粘性。

本系统主要应用于基金电商行业，拟作为一款具备用户群体普适性的软件为其提供服务。主要用户群体涵盖各阶段人群，且均不存在对于计算机应用的使用障碍，同时具备一定的辨识能力和完全民事行为能力。因此，本项目在理想状态下可行。

### 2.2 产品功能
#### 2.2.1 系统用例模型

#### 2.2.2 业务流模型

### 2.3 一般约束
假定：用户能够提供交付测试的环境；用户能够参与到需求的核准工作；项目进程中关键节点进展顺利。

约束：本系统的中期第一版交付日期为2020-10-28，最后的交付日期是由任课教师决定，暂定为2020年12月末；

设计和实现上的限制:使用云效平台进行项目管理；使用github进行代码管理；基于JavaWeb框架进行开发；使用BootStrap4进行界面美化；使用eclipes作为集成开发工作；使用Tomcat作为开发过程的本地服务器，使用阿里云ECS服务器作为交付时的服务器；使用MySQL数据库进行数据存储与响应；

## 3. 功能性需求分类
### 3.1 个人工作台
功能说明：

（1）用户可以通过个人工作台注册账号和登录网站。

（2）用户在本模块可以对已填的信息进行修改和完善。

参与者：用户；

### 3.2 基金导购模块
功能说明：

（1）该模块向用户提供基金的基本信息，所属基金公司、所属板块、风险类型等；

（2）用户可查看买入买出的费率，以及历史上的收益。

（3）用户可在该模块查看自身历史购入和卖出的记录。

（4）用户遇到问题可以联系客服，寻求帮助。

参与者：用户，客服；

### 3.3 基金产品模块
功能说明：

（1）系统根据用户投资性格、用户偏重模块对用户投资偏好进行分析。

（2）根据分析的结果对用户提供兴趣基金导购，推荐新股以及基金。

参与者：用户、管理员。

### 3.4 大盘指数模块
功能说明：

（1）提供指数的可视化分析，用户可以清楚的了解到基金、股票的价格涨幅情况。

（2）大盘自选预测，对股票、基金的价格走向进行预测。

参与者：管理员、用户

### 3.5 后台管理模块
功能说明：

（1）管理员可以上架或下架基金。

（2）管理基金的基本信息，包括基金的简介、基金所属公司、买入卖出费率等。

（3）对异常的订单进行处理。

参与者：系统管理员。

## 4. 产品的非功能性需求
### 4.1 外部接口说明
#### 4.1.1 用户接口
① 用户登录
<table>
 <tr>
  <th>请求参数</th>
  <th>类型</th>
  <th>是否必填</th>
  <th>参数位置</th>
  <th>说明</th>
 </tr>
 <tr>
  <th>Username</th>
  <th>字符串</th>
  <th>是</th>
  <th>消息体</th>
  <th>用户名</th>
 </tr>
 <tr>
  <th>Username</th>
  <th>字符串</th>
  <th>是</th>
  <th>消息体</th>
  <th>用户名</th>
 </tr>
</table>

响应：登陆成功： {

"code":200,

"message":"登陆成功"，

"token":"123456789"  }


登录失败： {

"code":403,

"message":"登陆失败"，  }

② 用户注册
<table>
 <tr>
  <th>user_name</th>
  <th>字符串</th>
  <th>是</th>
  <th>消息体</th>
  <th>用户名</th>
 </tr>
 <tr>
  <th>pass_word</th>
  <th>字符串</th>
  <th>是</th>
  <th>消息体</th>
  <th>用户名</th>
 </tr>
 <tr>
   <th>user_tel</th>
   <th>字符串</th>
   <th>是</th>
   <th>消息体</th>
   <th>电话</th>
 </tr>
 <tr>
   <th>user_sex</th>
   <th>字符串</th>
   <th>是</th>
   <th>消息体</th>
   <th>用户性别</th>
 </tr>
 <tr>
   <th>user_email</th>
   <th>字符串</th>
   <th>是</th>
   <th>消息体</th>
   <th>用户邮箱</th> 
 </tr>
 <tr>
   <th>user_photo</th>
   <th>字符串</th>
   <th>是</th>
   <th>消息体</th>
   <th>用户头像</th> 
 </tr>
</table>

响应信息 注册成功 状态码：200 { "user_name": "张三",

"user_tel": "13697552828",

"user_full_name": "李四",

"user_sex": 男,

"user_birth": "2000/1/1",

"user_email": "123456789@qq.com",

"user_photo": ""  } 

注册失败 状态码：403  {

"detail":"注册信息有误"

}

③ 买入或卖出基金
<table>
 <tr>
  <th>order_code</th>
  <th>字符串</th>
  <th>是</th>
  <th>消息体</th>
  <th>订单编号</th>
 </tr>
 <tr>
  <th>Order_fundname</th>
  <th>字符串</th>
  <th>是</th>
  <th>消息体</th>
  <th>基金名称</th>
 </tr>
 <tr>
   <th>Order_number</th>
   <th>float</th>
   <th>是</th>
   <th>消息体</th>
   <th>基金份额</th>
 </tr>
 <tr>
   <th>Order_price</th>
   <th>float</th>
   <th>是</th>
   <th>消息体</th>
   <th>基金价格</th>
 </tr>
 <tr>
   <th>Order_time</th>
   <th>date</th>
   <th>是</th>
   <th>消息体</th>
   <th>买入或卖出时间</th> 
 </tr>
 <tr>
   <th>Order_fare</th>
   <th>float</th>
   <th>是</th>
   <th>消息体</th>
   <th>买入或卖出费率</th> 
 </tr>
</table>

响应信息 买入或卖出成功 状态码 200

{ "order_code": "111111",

"order_fund": "中欧医疗混合",

"order_number": "20",

"order_price": 50,

"order_time": "2020/1/1",

"order_fare": "0.02%",

}  
 
注册失败 状态码：403  {

"detail":"买入或卖出失败"

}

#### 4.1.2 软件接口
用户支付时需要跳转到支付宝或微信对应的支付界面，当用户完成支付后再跳转到基金购买成功的界面。

### 4.2 性能需求
a.静态数值需求可能包括：

1)支持的终端数：10+；

2)支持并行操作的用户数；10+；

3)系统响应的时间特性：在执行刷新操作的时候，在运行环境规定的条件下，单次操作的响应时间要求在3秒钟之内；返回100行数据以内的数据查询，单次操作的响应时间要求在2秒之内；

4)故障处理要求：当服务器出错时，页面能够进行一些合理的提示信息，避免用户多次刷新导致网页崩溃，或者程序停止运行；数据库要求有备份和恢复机制，以防止数据的全部丢失；

5)安全需求：由于该系统有很多敏感的数据信息将在其上传输和存储。因此，确保数据信息安全，也是设计的重要组成部分。用户的权限管理要做好。

b.硬件的限制

本项包括在各种硬件约束下运行的软件要求，例如，应该包括：

1)硬件配置的特点：windows10操作系统；

2)内存储器和辅助存储器的容量：内存8G RAM，空间存储256G；

3)处理器：Intel® Core™ I5-8265U CPU @1.60GHz(8 CPUs)。

### 4.3 属性
#### 4.3.1 友好性
界面操作友好，具有良好的交互性，通过对数据进行可视化分析让用户更加直观地看懂趋势。界面布局采用Bootstrap4开源工具包，降低网页编写成本。采用Ajax提交数据，实现网页局部刷新。设有服务器维护更新和服务器连接失败的友好界面，保证在服务器异常时，对操作有异常响应和建议刷新。

#### 4.3.2 安全性
a.利用可靠的密码技术：基于RSA算法的数据传输技术。

RSA公钥加密算法是目前最有影响力的公钥加密算法，它能够抵抗到目前为止已知的所有密码攻击，已被ISO推荐为公钥数据加密标准。RSA算法基于一个十分简单的数论事实：将两个大素数相乘十分容易，但那时想要对其乘积进行因式分解却极其困难，因此可以将乘积公开作为加密密钥。

RSA公开密钥密码体制。所谓的公开密钥密码体制就是使用不同的加密密钥与解密密钥，是一种“由已知加密密钥推导出解密密钥在计算上是不可行的”密码体制。针对线上复健康复应用项目的安全性能需求，系统采用RSA非对称加密方法。具体实现步骤如下：

(1)在服务端用密码种子生成密钥对，保存密码种子（一个特定的密码种子，生成特定的密钥对，密码种子确定，密钥对确定）或者直接保存私钥；

(2)把公钥传到页面；

(3)页面用JS根据公钥把需要加密的数据进行加密，把加密后的数据传回服务端；

(4)服务端取出保存的密码种子或者直接保存的私钥，采用私钥对加密字符串进行解密，得到明文；

在线上复健康复应用项目中，一些高机密的信息如签署的合同等不能仅靠权限去限制，还应该利用能同时用于加密和数字签名的基于RSA算法的数据传输技术，可以保证文件在传输过程中的安全性，同时也可以对用户的密码进行数字签名，能够极大提高安全性。

b.掌握特定的记录或历史数据集。

c.给不同的模块分配不同的功能，不同功能之间界限清晰。

d.计算临界值的检查。

#### 4.3.3 可维护性
软件可以根据需求来增加或减少一些基金，后期也将增加帮你挑基金等更加多元智能的模块。

#### 4.3.4 可转移/换性
利用开发平台提供的数据转换功能，可以实现跨平台数据转换，实现不同数据库数据间的数据转换，如：FoxPro、Access、Microsoft SQL Server间的数据转换。

### 4.4 系统的运行环境
运行环境是Apache Tomcat服务器，Java环境，开发平台是eclipse jee 2019-12。

### 4.5 其他需求
用户操作需求

a.在用户组织之中各种方式的操作。例如，用户注册、用户登录、买入或卖出基金、查看基金详情、查看大盘走势、预测大盘、查看推荐的基金。

b.数据处理运行功能：数据实时进行处理，5秒更新一次。

c.后援和恢复操作：服务器每半小时将数据备份一次，保证在服务器崩溃后能恢复之前的数据。

## 5. ER图和数据字典抽取
### 5.1 ER图
根据以上的分析，把在整个系统过程中出现的实体及各个实体之间的关联画成E-R图，以更好的从整体角度了解系统中所有的实体。

## 5.2 数据字典
对系统中出现的各个实体的属性进行整理，形成数据字典，此可以做为后继开发过程中数据结构设计、数据库设计、数据库表结构设计的主要来源。

#### 5.2.1 基金基本信息
<table>
 <tr>
  <th>属性</th>
  <th>约束</th>
  <th>释义</th>
  <th>备注</th>
 </tr>
 
 <tr>
  <th>基金编号</th>
  <th>必填</th>
  <th>基金的编号，是唯一标识</th>
  <th>String，主键</th>
 </tr>
 
 <tr>
  <th>基金名称</th>
  <th>必填</th>
  <th></th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>成立日期</th>
  <th>必填</th>
  <th>基金成立日期</th>
  <th>Date</th>
 </tr>
 
 <tr>
  <th>资产规模</th>
  <th>必填</th>
  <th>基金的规模大小，单位亿</th>
  <th>Float</th>
 </tr>
 
 <tr>
  <th>风险类型</th>
  <th>必填</th>
  <th>中高风险、中低风险</th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>成立以来涨跌幅</th>
  <th>必填</th>
  <th></th>
  <th>Float</th>
 </tr>
 
 <tr>
  <th>日涨跌幅</th>
  <th>必填</th>
  <th></th>
  <th>Float</th>
 </tr>
 
 <tr>
  <th>净值</th>
  <th>必填</th>
  <th></th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>基金管理人</th>
  <th>必填</th>
  <th></th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>基金托管人</th>
  <th>必填</th>
  <th></th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>基金经理</th>
  <th>必填</th>
  <th></th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>投资理念</th>
  <th>必填</th>
  <th>基金经理投资的偏好</th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>投资策略</th>
  <th>必填</th>
  <th>对风险的处理方法、基金分析评估等</th>
  <th>String</th>
 </tr>
 
  <tr>
  <th>基金产品概要</th>
  <th>必填</th>
  <th>基金简介</th>
  <th>String</th>
 </tr>
</table>

#### 5.2.2 管理员基本信息
<table>
 <tr>
  <th>属性</th>
  <th>约束</th>
  <th>释义</th>
  <th>备注</th>
 </tr>
 
 <tr>
  <th>管理员编号</th>
  <th>必填</th>
  <th>管理员的编号，是唯一标识</th>
  <th>String，主键</th>
 </tr>
 
 <tr>
  <th>管理员名称</th>
  <th>必填</th>
  <th></th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>管理员密码</th>
  <th>必填</th>
  <th></th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>管理员权限</th>
  <th>必填</th>
  <th>低、中、高</th>
  <th>String</th>
 </tr>
</table>

#### 5.2.3 买卖基金信息
<table>
 <tr>
  <th>属性</th>
  <th>约束</th>
  <th>释义</th>
  <th>备注</th>
 </tr>
 
 <tr>
  <th>订单编号</th>
  <th>必填</th>
  <th>订单的编号，是唯一标识</th>
  <th>String，主键</th>
 </tr>
 
 <tr>
  <th>基金编号</th>
  <th>必填</th>
  <th></th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>买入或买入</th>
  <th>必填</th>
  <th></th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>买入或卖出费率</th>
  <th>必填</th>
  <th></th>
  <th>Float</th>
 </tr>
 
 <tr>
  <th>基金名称</th>
  <th>必填</th>
  <th></th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>交易创立时间</th>
  <th>必填</th>
  <th>订单建立时间</th>
  <th>Date</th>
 </tr>
 
 <tr>
  <th>交易完成时间</th>
  <th>必填</th>
  <th>订单支付时间</th>
  <th>Date</th>
 </tr>
 
 <tr>
  <th>基金类型</th>
  <th>必填</th>
  <th>中高风险、中低风险</th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>成立以来涨跌幅</th>
  <th>必填</th>
  <th></th>
  <th>Float</th>
 </tr>
 
 <tr>
  <th>日涨跌幅</th>
  <th>必填</th>
  <th></th>
  <th>Float</th>
 </tr>
 
 <tr>
  <th>净值</th>
  <th>必填</th>
  <th></th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>基金管理人</th>
  <th>必填</th>
  <th></th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>基金托管人</th>
  <th>必填</th>
  <th></th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>基金经理</th>
  <th>必填</th>
  <th></th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>投资理念</th>
  <th>必填</th>
  <th>基金经理投资的偏好</th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>投资策略</th>
  <th>必填</th>
  <th>对风险的处理方法、基金分析评估等</th>
  <th>String</th>
 </tr>
 
  <tr>
  <th>基金产品概要</th>
  <th>必填</th>
  <th>基金简介</th>
  <th>String</th>
 </tr> 
</table>

#### 5.2.4 历史订单信息
<table>
 <tr>
  <th>属性</th>
  <th>约束</th>
  <th>释义</th>
  <th>备注</th>
 </tr>
 
 <tr>
  <th>订单编号</th>
  <th>必填</th>
  <th>订单的编号，是唯一标识</th>
  <th>String，主键</th>
 </tr>
 
 <tr>
  <th>基金编号</th>
  <th>必填</th>
  <th></th>
  <th>String</th>
 </tr>

 <tr>
  <th>买入或买入</th>
  <th>必填</th>
  <th></th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>基金名称</th>
  <th>必填</th>
  <th></th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>交易创立时间</th>
  <th>必填</th>
  <th>订单建立时间</th>
  <th>Date</th>
 </tr>

 <tr>
  <th>交易完成时间</th>
  <th>必填</th>
  <th>订单支付时间</th>
  <th>Date</th>
 </tr>
</table>

#### 5.2.5 大盘指数信息
<table>
 <tr>
  <th>属性</th>
  <th>约束</th>
  <th>释义</th>
  <th>备注</th>
 </tr>
 
 <tr>
  <th>大盘指数类型</th>
  <th>必填</th>
  <th>上证指数、纳斯达克指数、道琼斯指数等</th>
  <th>String，主键</th>
 </tr>
 
 <tr>
  <th>日期</th>
  <th>必填</th>
  <th></th>
  <th>Date，主键</th>
 </tr> 
 
 <tr>
  <th>最高</th>
  <th>必填</th>
  <th>大盘一天中最高指数</th>
  <th>Float</th>
 </tr>
 
 <tr>
  <th>最低</th>
  <th>必填</th>
  <th>大盘一天中最低指数</th>
  <th>Float</th>
 </tr>
 
 <tr>
  <th>昨收</th>
  <th>必填</th>
  <th>前一天收盘价</th>
  <th>Float</th>
 </tr>
 
 <tr>
  <th>今开</th>
  <th>必填</th>
  <th>大盘这一天的开盘数值</th>
  <th>Float</th>
 </tr>
 
 <tr>
  <th>成交额</th>
  <th>必填</th>
  <th></th>
  <th>Float</th>
 </tr>
 
 <tr>
  <th>日涨跌幅</th>
  <th>必填</th>
  <th></th>
  <th>Float</th>
 </tr>
</table>

#### 5.2.6 用户投资偏好分析
<table>
 <tr>
  <th>属性</th>
  <th>约束</th>
  <th>释义</th>
  <th>备注</th>
 </tr>
 
 <tr>
  <th>用户名</th>
  <th>必填</th>
  <th></th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>用户编号</th>
  <th>必填</th>
  <th></th>
  <th>String，主键</th>
 </tr>
 
 <tr>
  <th>风险偏好类型</th>
  <th>必填</th>
  <th>中高风险、中低风险等</th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>板块偏好类型</th>
  <th>必填</th>
  <th>军工、医疗、白酒等</th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>出生年月</th>
  <th>必填</th>
  <th></th>
  <th>Date</th>
 </tr>
 
 <tr>
  <th>投资性格</th>
  <th>必填</th>
  <th>乐观型或悲观型等</th>
  <th>String</th>
 </tr>
 
</table>

#### 5.2.7 兴趣基金导购

<table>
 <tr>
  <th>属性</th>
  <th>约束</th>
  <th>释义</th>
  <th>备注</th>
 </tr>
 
 <tr>
  <th>用户编号</th>
  <th>必填</th>
  <th></th>
  <th>String，主键</th>
 </tr>
 
 <tr>
  <th>基金编号</th>
  <th>必填</th>
  <th>基金的编号，是唯一标识</th>
  <th>String，主键</th>
 </tr>
 
 <tr>
  <th>基金名称</th>
  <th>必填</th>
  <th></th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>成立日期</th>
  <th>必填</th>
  <th>基金成立日期</th>
  <th>Date</th>
 </tr>
 
 <tr>
  <th>资产规模</th>
  <th>必填</th>
  <th>基金的规模大小，单位亿</th>
  <th>Float</th>
 </tr>
 
 <tr>
  <th>风险类型</th>
  <th>必填</th>
  <th>中高风险、中低风险</th>
  <th>String</th>
 </tr>

 <tr>
  <th>成立以来涨跌幅</th>
  <th>必填</th>
  <th></th>
  <th>Float</th>
 </tr>
 
 <tr>
  <th>日涨跌幅</th>
  <th>必填</th>
  <th></th>
  <th>Float</th>
 </tr>

 <tr>
  <th>净值</th>
  <th>必填</th>
  <th></th>
  <th>Float</th>
 </tr>
 
 <tr>
  <th>基金管理人</th>
  <th>必填</th>
  <th></th>
  <th>String</th>
 </tr>

 <tr>
  <th>基金托管人</th>
  <th>必填</th>
  <th></th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>基金经理</th>
  <th>必填</th>
  <th></th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>投资理念</th>
  <th>必填</th>
  <th>基金经理投资的偏好</th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>投资策略</th>
  <th>必填</th>
  <th>对风险的处理方法、基金分析评估等</th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>基金产品概要</th>
  <th>必填</th>
  <th>基金简介</th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>推荐原因</th>
  <th>必填</th>
  <th>根据用户的投资偏好选取相应的推荐理由</th>
  <th>String</th>
 </tr>
</table>

#### 5.2.8 基金自选预测
<table>
 <tr>
  <th>属性</th>
  <th>约束</th>
  <th>释义</th>
  <th>备注</th>
 </tr>
 
 <tr>
  <th>基金编号</th>
  <th>必填</th>
  <th>基金的编号，是唯一标识</th>
  <th>String，主键</th>
 </tr>
 
 <tr>
  <th>日期</th>
  <th>必填</th>
  <th></th>
  <th>Date，主键</th>
 </tr> 
 
 <tr>
  <th>所属大盘指数</th>
  <th>必填</th>
  <th></th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>大盘指数数值</th>
  <th>必填</th>
  <th></th>
  <th>Float</th>
 </tr>
 
 <tr>
  <th>基金名称</th>
  <th>必填</th>
  <th></th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>是否购买</th>
  <th>必填</th>
  <th></th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>净值</th>
  <th>必填</th>
  <th></th>
  <th>Float</th>
 </tr>
 
 <tr>
  <th>估值</th>
  <th>必填</th>
  <th></th>
  <th>Float</th>
 </tr>
 
 <tr>
  <th>添加后收益</th>
  <th>必填</th>
  <th></th>
  <th>Float</th>
 </tr>

 <tr>
  <th>近一周收益</th>
  <th>必填</th>
  <th></th>
  <th>Float</th>
 </tr>
 
 <tr>
  <th>近一月收益</th>
  <th>必填</th>
  <th></th>
  <th>Float</th>
 </tr>
 
 <tr>
  <th>近三月收益</th>
  <th>必填</th>
  <th></th>
  <th>Float</th>
 </tr>

 <tr>
  <th>近六月收益</th>
  <th>必填</th>
  <th></th>
  <th>Float</th>
 </tr>
 
 <tr>
  <th>近一年收益</th>
  <th>必填</th>
  <th></th>
  <th>Float</th>
 </tr>

 <tr>
  <th>成立来收益</th>
  <th>必填</th>
  <th></th>
  <th>Float</th>
 </tr>
</table>

#### 5.2.9 订单异常处理
<table>
 <tr>
  <th>属性</th>
  <th>约束</th>
  <th>释义</th>
  <th>备注</th>
 </tr>
 
 <tr>
  <th>订单编号</th>
  <th>必填</th>
  <th>订单的编号，是唯一标识</th>
  <th>String，主键</th>
 </tr>
 
 <tr>
  <th>用户编号</th>
  <th>必填</th>
  <th></th>
  <th>String，主键</th>
 </tr>
 
 <tr>
  <th>用户名</th>
  <th>必填</th>
  <th></th>
  <th>String</th>
 </tr>

 <tr>
  <th>买入或买入</th>
  <th>必填</th>
  <th></th>
  <th>String</th>
 </tr>

 <tr>
  <th>买入或卖出费率</th>
  <th>必填</th>
  <th></th>
  <th>Float</th>
 </tr>

 <tr>
  <th>基金名称</th>
  <th>必填</th>
  <th></th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>交易创立时间</th>
  <th>必填</th>
  <th>订单建立时间</th>
  <th>Date</th>
 </tr>
 
 <tr>
  <th>交易完成时间</th>
  <th>必填</th>
  <th>订单支付时间</th>
  <th>Date</th>
 </tr>
 
 <tr>
  <th>订单异常原因</th>
  <th>必填</th>
  <th>支付超时等</th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>处理操作</th>
  <th>必填</th>
  <th></th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>客服建议</th>
  <th>选填</th>
  <th></th>
  <th>String</th>
 </tr> 
</table>

#### 5.2.10 客服咨询
<table>
 <tr>
  <th>属性</th>
  <th>约束</th>
  <th>释义</th>
  <th>备注</th>
 </tr>
 
 <tr>
  <th>咨询编号</th>
  <th>必填</th>
  <th>咨询记录编号</th>
  <th>String，主键</th>
 </tr>

 <tr>
  <th>用户编号</th>
  <th>必填</th>
  <th></th>
  <th>String，主键</th>
 </tr>
 
 <tr>
  <th>用户名</th>
  <th>必填</th>
  <th></th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>管理员编号</th>
  <th>必填</th>
  <th></th>
  <th>String，主键</th>
 </tr>
 
 <tr>
  <th>管理员名称</th>
  <th>必填</th>
  <th></th>
  <th>String</th>
 </tr>
 
 <tr>
  <th>聊天记录</th>
  <th>必填</th>
  <th></th>
  <th>String，多值属性</th>
 </tr>
 
 <tr>
  <th>用户评价</th>
  <th>必填</th>
  <th></th>
  <th>String</th>
 </tr>
</table>
