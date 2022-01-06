#sh initialise.sh

read -p "Enter The Branch Name: "  BRANCHNAME
read -p "Enter The Repo Name: "  REPONAME

echo "https://github.com/CryptoidCoder/$REPONAME.git"
echo "Branch: $BRANCHNAME"

mkdir "$REPONAME-$BRANCHNAME"
cd "$REPONAME - $BRANCHNAME"

git init
git checkout --orphan $BRANCHNAME
git commit --allow-empty -m "Root Commit"
git remote add origin "https://github.com/CryptoidCoder/$REPONAME.git"

git push origin $BRANCHNAME

git add --all
git commit -m "Initial Commit"
git push --set-upstream origin $BRANCHNAME