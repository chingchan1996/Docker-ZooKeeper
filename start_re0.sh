# /bin/bash

docker start docker_re0_1

mastership=`cat ./re1/mastership`

if [ $mastership = '1' ]
then 
    echo "0" > "./re0/mastership"
fi

echo "re0: "
echo `cat ./re0/mastership`
echo "re1: "
echo `cat ./re1/mastership`