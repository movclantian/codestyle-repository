# PostgreSQL专属连接池配置
spring:
   datasource:
      hikari:
         minimum-idle: 5                # 最小空闲连接数
         maximum-pool-size: 10          # PG连接数建议小于MySQL
         auto-commit: true
         idle-timeout: 300000
         pool-name: PG-Hikari-Pool
         max-lifetime: 1800000
         connection-timeout: 30000
         # PostgreSQL特有初始化SQL（无DUAL表）
         connection-init-sql: SELECT 1
         # PostgreSQL方言配置
mybatis-plus:
   global-config:
      db-config:
         id-type: ASSIGN_ID  # PG用雪花算法主键（替代自增）