# Cleans up old branches that are behind main branch and dont
# have any outstanding commits that are not yet in main.
git branch -d $(git branch --merged=main | grep -v main)
git fetch --prune