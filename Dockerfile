FROM openjdk:8-jdk-alpine
RUN apk add --no-cache bash
RUN mkdir workspace
RUN chmod g+rwx workspace -R
ADD "zconbt" "zconbt/"
RUN chmod g+rwx zconbt -R
ENTRYPOINT [ "/zconbt/bin/zconbt" ]