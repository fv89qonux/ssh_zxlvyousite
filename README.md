## 本项目实现的最终作用是基于SSH实现在线旅游网站
## 分为2个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 公告管理
 - 度假酒店管理
 - 旅游攻略管理
 - 旅游管理
 - 景点管理
 - 注册用户管理
 - 管理员登录
 - 评价管理
 - 预定管理
### 第2个角色为用户角色，实现了如下功能：
 - 按分类查看
 - 提交评论
 - 提交预定
 - 查看公告
 - 查看我的预定
 - 查看旅游页详情
## 数据库设计如下：
# 数据库设计文档

**数据库名：** ssh_zxlvyousite

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [t_dianping](#t_dianping) |  |
| [t_gonggao](#t_gonggao) |  |
| [t_hotel](#t_hotel) |  |
| [t_jingdian](#t_jingdian) |  |
| [t_line](#t_line) |  |
| [t_manager](#t_manager) |  |
| [t_raiders](#t_raiders) |  |
| [t_reserve](#t_reserve) |  |
| [t_tours](#t_tours) |  |
| [t_user](#t_user) | 用户表 |

**表名：** <a id="t_dianping">t_dianping</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | content |   text   | 65535 |   0    |    Y     |  N   |   NULL    | 内容  |
|  3   | createTime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    | 创建时间  |
|  4   | deletestatus |   int   | 10 |   0    |    N     |  N   |       |   |
|  5   | hotelid |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  6   | jingdianid |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  7   | toursid |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  8   | userid |   int   | 10 |   0    |    Y     |  N   |   NULL    | 用户ID  |

**表名：** <a id="t_gonggao">t_gonggao</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | biaoti |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 标题  |
|  3   | content |   text   | 65535 |   0    |    Y     |  N   |   NULL    | 内容  |
|  4   | createTime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    | 创建时间  |
|  5   | gonggaolock |   int   | 10 |   0    |    N     |  N   |       |   |

**表名：** <a id="t_hotel">t_hotel</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | address |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 地址  |
|  3   | content |   text   | 65535 |   0    |    Y     |  N   |   NULL    | 内容  |
|  4   | createTime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    | 创建时间  |
|  5   | hotellock |   int   | 10 |   0    |    N     |  N   |       |   |
|  6   | imgpath |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名字  |
|  8   | price |   int   | 10 |   0    |    N     |  N   |       | 价格  |
|  9   | tel |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电话  |

**表名：** <a id="t_jingdian">t_jingdian</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | address |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 地址  |
|  3   | content |   text   | 65535 |   0    |    Y     |  N   |   NULL    | 内容  |
|  4   | createTime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    | 创建时间  |
|  5   | imgpath |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | jingdianlock |   int   | 10 |   0    |    N     |  N   |       |   |
|  7   | name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名字  |
|  8   | price |   int   | 10 |   0    |    N     |  N   |       | 价格  |
|  9   | number |   int   | 10 |   0    |    Y     |  N   |   NULL    | 景点游玩次数  |

**表名：** <a id="t_line">t_line</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | content |   text   | 65535 |   0    |    Y     |  N   |   NULL    | 内容  |
|  3   | createTime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    | 创建时间  |
|  4   | imgpath |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名字  |
|  6   | linelock |   int   | 10 |   0    |    N     |  N   |       |   |

**表名：** <a id="t_manager">t_manager</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | createTime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    | 创建时间  |
|  3   | managerlock |   int   | 10 |   0    |    N     |  N   |       |   |
|  4   | password |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  5   | username |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |

**表名：** <a id="t_raiders">t_raiders</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | content |   text   | 65535 |   0    |    Y     |  N   |   NULL    | 内容  |
|  3   | createTime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    | 创建时间  |
|  4   | imgpath |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名字  |
|  6   | raiderslock |   int   | 10 |   0    |    N     |  N   |       |   |
|  7   | number |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="t_reserve">t_reserve</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | createTime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    | 创建时间  |
|  3   | heji |   int   | 10 |   0    |    N     |  N   |       |   |
|  4   | number |   int   | 10 |   0    |    N     |  N   |       |   |
|  5   | reservelock |   int   | 10 |   0    |    N     |  N   |       |   |
|  6   | stauts |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | tianshu |   int   | 10 |   0    |    N     |  N   |       |   |
|  8   | times |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | hotelid |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  10   | jingdianid |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  11   | toursid |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  12   | userid |   int   | 10 |   0    |    Y     |  N   |   NULL    | 用户ID  |

**表名：** <a id="t_tours">t_tours</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | biaoti |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 标题  |
|  3   | category |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | content |   text   | 65535 |   0    |    Y     |  N   |   NULL    | 内容  |
|  5   | createTime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    | 创建时间  |
|  6   | imgpath |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | price |   int   | 10 |   0    |    N     |  N   |       | 价格  |
|  8   | tourslock |   int   | 10 |   0    |    N     |  N   |       |   |
|  9   | xingcheng |   text   | 65535 |   0    |    Y     |  N   |   NULL    |   |
|  10   | xuzhi |   text   | 65535 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="t_user">t_user</a>

**说明：** 用户表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | address |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 地址  |
|  3   | age |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 年龄  |
|  4   | createTime |   datetime   | 19 |   0    |    Y     |  N   |   NULL    | 创建时间  |
|  5   | email |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 邮箱  |
|  6   | jiguan |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | password |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  8   | telephone |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 手机号码  |
|  9   | truename |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | userlock |   int   | 10 |   0    |    N     |  N   |       |   |
|  11   | username |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  12   | xingbie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 性别  |

