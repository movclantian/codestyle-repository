生成数据库配置文件

传入的参数有：
- `db-type` 数据库类型，可选值：`mysql`、`postgresql`
- `dbUrl` 数据库连接地址,例如：`jdbc:mysql://localhost:3306/continew?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8`
- `dbUsername` 数据库用户名
- `dbPassword` 数据库密码
- `progectName` 项目名称，用于生成配置文件名