<!-- 以下是DatabaseConfig模板生成的${dbType}数据库核心依赖（复制到现有pom.xml的<dependencies>中） -->
<!-- ${dbType}数据库驱动 -->
<#if dbType == "mysql">
    <dependency>
        <groupId>mysql</groupId>
        <artifactId>mysql-connector-java</artifactId>
        <version>8.0.33</version>
        <scope>runtime</scope>
    </dependency>
<#elseif dbType == "postgresql">
    <dependency>
        <groupId>org.postgresql</groupId>
        <artifactId>postgresql</artifactId>
        <version>42.6.0</version>
        <scope>runtime</scope>
    </dependency>
</#if>

<!-- HikariCP连接池（SpringBoot默认已包含，显式引入避免版本冲突） -->
<dependency>
    <groupId>com.zaxxer</groupId>
    <artifactId>HikariCP</artifactId>
    <version>5.0.1</version>
</dependency>