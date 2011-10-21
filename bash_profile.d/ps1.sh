# http://henrik.nyh.se/2008/12/git-dirty-prompt
# http://www.simplisticcomplexity.com/2008/03/13/show-your-git-branch-name-in-your-prompt/
#   username@Machine ~/dev/dir[master]$   # clean working directory
#   username@Machine ~/dev/dir[master*]$  # dirty working directory

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ [\1$(parse_git_dirty)]/"
}
function rbenv_ps1() {
  if [ -d ~/.rbenv ]; then
    local rbenv_ps1="$(rbenv version-name)"
    if [ -n "${rbenv_ps1}" ]; then
      if [ "system" != "${rbenv_ps1}" ]; then
        printf "${1:-%s}" "$rbenv_ps1"
      fi
    fi
  fi
}
# export PS1='\u@\h:\[\033[1;33m\]\w\[\033[0m\]$(parse_git_branch)$ '
export PS1='$(rbenv_ps1):\[\033[1;33m\]\w\[\033[0m\]$(parse_git_branch)$ '
