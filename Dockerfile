FROM python:3.9
FROM node:16
WORKDIR /usr/tools/erp
ENV TZ Asia/Shanghai
COPY . /usr/tools/erp
RUN echo "安装后端项目依赖"
RUN pip3 install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN echo "配置后端项目"
RUN python tools/create_configs.py
RUN echo "启动后端服务"
RUN python manage.py runserver















