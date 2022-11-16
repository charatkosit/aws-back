#!bin/bash
tagname=`cat /var/lib/jenkins/workspace/go-back-prod/package.json |grep "version" |cut -d'"' -f 4`
sed -i -e 's/tagname/${tagname}/g' //var/lib/jenkins/workspace/go-back-prod/docker-compose.yml