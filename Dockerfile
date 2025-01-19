# 使用 Java 17 的基础镜像
FROM openjdk:17-jdk-slim

# 设置工作目录
WORKDIR /app

# 复制生成的 JAR 文件到 Docker 镜像中
COPY build/libs/com.laioffer.spotify_backend-all.jar app.jar

# 暴露端口（与代码中保持一致）
EXPOSE 8080

# 启动 JAR 文件
CMD ["java", "-jar", "app.jar"]
