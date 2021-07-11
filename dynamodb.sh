aws dynamodb create-table --table-name users \
    --attribute-definitions \
        AttributeName=id,AttributeType=S \
    --key-schema \
        AttributeName=id,KeyType=HASH \
    --provisioned-throughput \
        ReadCapacityUnits=10,WriteCapacityUnits=5 \
    --endpoint http://dynamodb:8000 \
    --region us-east-1

aws dynamodb create-table --table-name total_by_hours \
    --attribute-definitions \
        AttributeName=created_at,AttributeType=S \
    --key-schema \
        AttributeName=created_at,KeyType=HASH \
    --provisioned-throughput \
        ReadCapacityUnits=10,WriteCapacityUnits=5 \
    --endpoint http://dynamodb:8000 \
    --region us-east-1

aws dynamodb create-table --table-name hashtag_by_country \
    --attribute-definitions \
        AttributeName=hashtag,AttributeType=S \
    --key-schema \
        AttributeName=hashtag,KeyType=HASH \
    --provisioned-throughput \
        ReadCapacityUnits=10,WriteCapacityUnits=5 \
    --endpoint http://dynamodb:8000 \
    --region us-east-1    