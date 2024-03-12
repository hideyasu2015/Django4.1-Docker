# 参考 https://docs.docker.jp/compose/django.html#id2

# ================= Build =================

FROM python:3.11.1
ENV PYTHONUNBUFFERED 1

ENV NODE_VERSION 18.14.0

# install nodejs(LTS)
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs

# install yarn
RUN npm install --global yarn

ENV PYTHONPATH=/usr/local/bin/python
ENV GA_TRACKING_ID ''

WORKDIR /back_code

# Install Python dependencies
COPY requirements.txt /back_code/
RUN pip install -r requirements.txt

COPY . /back_code/

# ================= docker起動時 =================
# composeに書く