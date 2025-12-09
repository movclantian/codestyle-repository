# MySQL专属连接池配置
spring:
   datasource:
   hikari:
      minimum-idle: 5                # 最小空闲连接数（MySQL建议5）
      maximum-pool-size: 20          # 最大连接数（MySQL高并发场景可设20）
      auto-commit: true              # 自动提交事务（MySQL默认开启）
      idle-timeout: 300000           # 空闲连接超时5分钟（释放闲置连接）
      pool-name: MySQL-Hikari-Pool   # 连接池名称（便于日志排查）
      max-lifetime: 1800000          # 连接最大生命周期30分钟（避免长连接失效）
      connection-timeout: 30000      # 连接超时30秒（超时则抛异常）
      # MySQL特有初始化SQL（验证连接有效性）
      connection-init-sql: SELECT 1 FROM DUAL
# MySQL方言配置（兼容MyBatis-Plus）
mybatis-plus:
   global-config:
      db-config:
         id-type: AUTO  # MySQL自增主键（适配MySQL的AUTO_INCREMENT）