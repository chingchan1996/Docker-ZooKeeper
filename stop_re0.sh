# /bin/bash

docker kill docker_hw0_1

mastership=`cat ./hw0/mastership`

if [ $mastership = '1' ]
then 
    echo "0" > "./hw0/mastership"
    echo "1" > "./hw1/mastership"
fi

echo "re0: "
echo `cat ./hw1/mastership`
echo "re1: "
echo `cat ./hw1/mastership`