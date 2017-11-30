FROM bitnami/redmine:latest
MAINTAINER Karim Samir <ksamir555@gmail.com>

ENV REDMINE_DB_MYSQL="redminecustomfields.chydejwyje5r.us-west-2.rds.amazonaws.com" \ 
REDMINE_DB_PASSWORD="bT\v>R~KSGQD=t4" \ 
REDMINE_DB_PORT_NUMBER="3306" \ 
REDMINE_DB_USERNAME="redmine" 
 

EXPOSE 3000 