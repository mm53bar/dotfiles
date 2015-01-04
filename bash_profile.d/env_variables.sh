for f in $HOME/.bash_profile.d/private/env/*
  do
  export ${f##*/}=$(cat $f)
done
