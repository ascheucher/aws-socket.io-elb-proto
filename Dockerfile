FROM node:4.2.1
MAINTAINER Andreas Scheucher ans@goobing.intern, andreas.scheucher@campus02.at
ENV REFRESHED_AT 2016-17-07

# to fasten build use npm cache sinopa: https://www.npmjs.com/package/sinopia
# add sinopa do docker-compose

WORKDIR /application/

CMD ["bash"]
COPY node_modules/ node_modules/
COPY src/ src/

EXPOSE 5858 3000 80
#
CMD ["node", "./src/bin/www"]
