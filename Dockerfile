# WEZVA TECHNOLOGIES - ADAM - +91-9739110917 #
FROM nginx:stable-alpine

#setting working derectory
WORKDIR /mario

#creating environment variables
ENV NAME=SUPER-MARIO
ENV PORT=80

#copying files into container
COPY . /mario

#removing Unnecessary files
RUN rm -rf /usr/share/nginx/html/*

#copying files into browser serving path
RUN cp -r /mario/* /usr/share/nginx/html/

#creating volume for access logs from the host
VOLUME /var/log/nginx/ /var/log/mario-logs

#expose port of container
EXPOSE 80

#Start Nginx when the container has provisioned
CMD ["nginx", "-g", "daemon off;"]
