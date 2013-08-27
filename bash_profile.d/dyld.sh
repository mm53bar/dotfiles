# Seeing this error a lot on Mountain Lion?
#
# dyld: DYLD_ environment variables being ignored because main executable (/usr/bin/sudo) is setuid or setgid
#
# This gets rid of it. 

unset DYLD_LIBRARY_PATH
