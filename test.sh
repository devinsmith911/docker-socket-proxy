arr=($(git diff-tree --name-only --no-commit-id HEAD))
for x in $arr; do echo $x; done
