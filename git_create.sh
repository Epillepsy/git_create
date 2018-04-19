function git-create()
{
  repo_name=$1
  username='username'
  test -z mon_test2 && echo Repo name required. 1>&2 && return 1
  curl -u $username https://api.github.com/user/repos -d {"name":"$repo_name"}
  git init
  git remote add origin https://github.com/$username/mon_test2.git
  git add *
  git commit -m auto creation of repository
  git push --set-upstream origin master
  return 0
}
