# 使用 Python 3.6 的官方基础镜像
FROM python:3.10-slim

# 设置工作目录
WORKDIR /app

# 将 requirements.txt 复制到容器中
COPY requirements.txt .

# 安装 Python 依赖包
RUN pip install --no-cache-dir -r requirements.txt

# 将应用程序的所有文件复制到容器中
COPY . .

# 暴露 Streamlit 默认端口
EXPOSE 8501

# 运行 Streamlit 应用程序
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
