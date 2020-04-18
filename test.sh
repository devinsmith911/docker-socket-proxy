IFS='\n'
arr=($(git diff-tree --name-only --no-commit-id HEAD))
unset IFS
for x in $arr; 
do 
if [[ "$x" == *"docker-compose"* ]]; then
    echo "TESTING $x"
    docker-compose -f $x config
   fi;
done;