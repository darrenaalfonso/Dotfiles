
# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

##
# Your previous /Users/Darren/.bash_profile file was backed up as /Users/Darren/.bash_profile.macports-saved_2015-11-23_at_22:27:23
##

# MacPorts Installer addition on 2015-11-23_at_22:27:23: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

alias python='python3'
# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/Darren/google-cloud-sdk/path.bash.inc' ]; then . '/Users/Darren/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/Darren/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/Darren/google-cloud-sdk/completion.bash.inc'; fi

# The next line enables shell command completion for git branches
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export PATH="/Applications/Postgres.app/Contents/Versions/9.5/bin:$PATH"

export PATH="/Users/Darren/Desktop/Coding_Interview:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"


export PATH="$HOME/.poetry/bin:$PATH"

set -o vi
put -o vi

. "$HOME/.cargo/env"
