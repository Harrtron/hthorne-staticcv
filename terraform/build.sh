branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')

if [ "$branch" = "master" ]
then
    websitename=$2
    echo "Using master. Website name will be $websitename"
else
    websitename=$branch.$2
    echo "Not using master. Website name will be $websitename"
fi

rootdomain=$(echo $2 | rev | cut -d '.' -f1-2 | rev)
echo $rootdomain

terraform $1 -auto-approve \
-var "websitename=$websitename" \
-var "rootdomain=$rootdomain" 