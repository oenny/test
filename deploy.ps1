$uncommitted=git status --porcelain
if ($uncommitted) {
  # commit changes
  git add -A
  git commit -m "publish gh-pages branch"
}
$commit_hash = git log -n 1 --format=%H HEAD

# commit gh-pages
git symbolic-ref HEAD refs/heads/gh-pages
git --work-tree dist add -A
git --work-tree dist commit --allow-empty --amend -m "publish commit '$commit_hash'"

# checkout master
git symbolic-ref HEAD refs/heads/master
git reset --hard

# push gh-pages
git push -f origin gh-pages
