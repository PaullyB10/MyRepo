export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

alias ll='ls -al'
alias gotta_catch_em_all='gcloud compute ssh jd-johto01 --zone=us-central1-a'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/paullyb/Documents/DevOps/google-cloud-sdk/path.bash.inc' ]; then . '/Users/paullyb/Documents/DevOps/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/paullyb/Documents/DevOps/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/paullyb/Documents/DevOps/google-cloud-sdk/completion.bash.inc'; fi

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

export BASH_COMPLETION_COMPAT_DIR=/usr/local/etc/bash_completion.d
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

source <(kubectl completion bash)
