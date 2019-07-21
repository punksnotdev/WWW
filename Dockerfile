#FROM node:11 as build-stage
#WORKDIR /html
#COPY . .
#COPY LANDING/package.json package.json

#RUN npm install

FROM nginx:alpine as production-stage
VOLUME /LANDING
# COPY LANDING /usr/share/nginx/html
# COPY --from=build-stage /html/ /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]