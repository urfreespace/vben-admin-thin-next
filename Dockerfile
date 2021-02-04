#FROM node:10.16.1-alpine
#COPY node_modules /opt/node_modules
#RUN npm config set registry https://registry.npm.taobao.org
FROM registry.cn-hangzhou.aliyuncs.com/pxtech/uap-web-next
COPY dist /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
