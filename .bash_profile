export PATH="/usr/local/bin:/usr/local/sbin:$HOME/bin:$PATH"

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home
export EC2_HOME=~/.ec2/ec2-api-tools-1.3-57419
export EC2_PRIVATE_KEY=~/.ec2/pk-43GG33ME2RK2OCHUC7ZRPDDMJEF3F4B3.pem
export EC2_CERT=~/.ec2/cert-43GG33ME2RK2OCHUC7ZRPDDMJEF3F4B3.pem
export PATH=$PATH:$EC2_HOME/bin

source "$HOME/.dotfiles/.git-completion.bash"

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
export PS1='\u@\h:\[\033[1;33m\]\w\[\033[0m\]$(parse_git_branch)$ '

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 
