export JAVA_HOME="$(/usr/libexec/java_home)"
export EC2_HOME="/usr/local/Library/LinkedKegs/ec2-api-tools/jars"
export EC2_URL=https://ec2.us-east-1.amazonaws.com
export PATH=$PATH:$EC2_HOME/bin 
export AWS_ACCESS_KEY=$(cat $HOME/.bash_profile.d/private/AWS_ACCESS_KEY)
export AWS_SECRET_KEY=$(cat $HOME/.bash_profile.d/private/AWS_SECRET_KEY)
