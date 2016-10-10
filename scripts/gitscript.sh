# Git Script ~jeSager
#
# create a repo directory on the disk
# have a folder for each repo

FILES=( $@ )
GITMASTER="~/Downloads/git"
START=$(pwd)
MESSAGE="USC Lab $(date +%A%l:%M%P)"
PS3="Enter a number to select a repo:  "
select REPO in $GITMASTER; do break; done
echo "Append something to your message or press <Enter>"
echo -n $MESSAGE
read input
MESSAGE+=$MESSAGE+input
cp ${FILES} $GITMASTER/$GITREPO
cd $GITMASTER/$GITREPO
git add .
git commit -m $MESSAGE
git push https://github.com/jeSager/$FOLDERNAME.git
cd $START
echo "...good job, fruitcake"
