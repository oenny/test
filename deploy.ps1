$uncommitted=git status --porcelain
if ($uncommitted) {
  # commit changes
  git add -A
  git commit -m "publish gh-pages"
}

$publish_commit = git log -n 1 --format=%H HEAD

# checkout gh-pages + commit
git symbolic-ref HEAD refs/heads/gh-pages
git --work-tree dist add -A
git --work-tree dist commit --allow-empty --amend -m "publish commit '$publish_commit'"

# checkout master
git symbolic-ref HEAD refs/heads/master
git reset --hard

# push gh-pages
git push -f origin gh-pages
