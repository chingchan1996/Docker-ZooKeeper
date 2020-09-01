# /bin/bash

docker kill docker_hw1_1

mastership=`cat ./hw1/mastership`

if [ $mastership = '1' ]
then 
    echo "1" > "./hw0/mastership"
    echo "0" > "./hw1/mastership"
fi

echo "hw0: "
echo `cat ./hw0/mastership`
echo "hw1: "
echo `cat ./hw1/mastership`