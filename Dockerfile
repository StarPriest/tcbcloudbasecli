# 使用 Node.js 18 作为基础镜像
FROM node:18

# 安装 Git 和 CloudBase CLI
RUN apt-get update && apt-get install -y git && \
    npm install -g @cloudbase/cli@latest

# 设置工作目录
WORKDIR /workspace

# 复制项目文件到容器中
COPY . .

# 设置默认命令
CMD ["bash"]