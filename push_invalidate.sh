aws s3 sync _site/ s3://www.skill-sprint.com/ 
aws cloudfront create-invalidation --distribution-id EUQZF9MBHE44X --paths "/*"
