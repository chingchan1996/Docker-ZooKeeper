# /bin/bash

docker start docker_hw0_1

mastership=`cat ./hw1/mastership`

if [ $mastership = '1' ]
then 
    echo "0" > "./hw0/mastership"
fi

echo "hw0: "
echo `cat ./hw0/mastership`
echo "hw1: "
echo `cat ./hw1/mastership`