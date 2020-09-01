# /bin/bash

docker kill docker_re0_1

mastership=`cat ./re0/mastership`

if [ $mastership = '1' ]
then 
    echo "0" > "./re0/mastership"
    echo "1" > "./re1/mastership"
fi

echo "re0: "
echo `cat ./re0/mastership`
echo "re1: "
echo `cat ./re1/mastership`