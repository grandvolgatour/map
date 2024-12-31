
DATE=`date +"%Y-%m-%d %T %N"`

git pull
git add .
git commit -m "$DATE"
git push