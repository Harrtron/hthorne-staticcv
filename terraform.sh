profilename=$3
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

cd terraform
terraform init -backend-config= -reconfigure
terraform $1 -auto-approve \
-var "websitename=$websitename" \
-var "rootdomain=$rootdomain" 

if [ "$1" = "apply" ]
then
    s3bucket=$(terraform output s3bucketname)
    cd ..
    aws s3 sync website s3://$s3bucket --profile $profilename
fi