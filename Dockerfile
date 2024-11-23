FROM python:3.9
WORKDIR /usr/tools/erp
ENV TZ Asia/Shanghai
COPY . /usr/tools/erp
RUN echo "安装后端项目依赖"
RUN pip3 install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN echo "更新模型"
RUN python manage.py makemigrations
RUN echo "启动后端服务"
RUN python manage.py runserver
















