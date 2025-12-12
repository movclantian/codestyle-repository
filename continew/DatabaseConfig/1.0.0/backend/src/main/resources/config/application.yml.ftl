#项目基础配置
spring:
   application:
    name: ${progectName}
#数据库核心配置(动态适配不同的数据库)
datasource:
   type:com.zaxxer.hikari.HikariDataSource
   driver-class-name:
      <#if dbType == "mysql">com.mysql.cj.jdbc.Driver
      <#elseif dbType == "postgresql">org.postgresql.Driver
      <#else>com.mysql.cj.jdbc.Driver</#if>
   url:${dbUrl}
   username:${dbUsername}
   password:${dbPassword}

# 引入对应数据库的专属配置片段（连接池参数等）
<#include "db/${dbType}/db-config-snippet.yml.ftl">
