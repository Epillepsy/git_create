function git-create() {
  repo_name=$1
  username='your_username'
  test -z $repo_name && echo "Repo name required." 1>&2 && return 1
  curl -u $username https://api.github.com/user/repos -d "{\"name\":\"$repo_name\"}"
  git init
  git remote add origin "https://github.com/$username/$repo_name.git"
  git add *
  git commit -m "auto creation of repository"
  git push --set-upstream origin master
}
