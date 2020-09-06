# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1) /'
}

export PS1="\[\033[36m\]\u\[\033[32m\]:\[\033[32m\]\w\[\033[34m\]\$(parse_git_branch)\[\033[00m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PATH=/usr/local/opt/llvm/bin:/usr/local/bin:$PATH
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

##
# Your previous /Users/fabrizioperria/.bash_profile file was backed up as /Users/fabrizioperria/.bash_profile.macports-saved_2018-02-08_at_16:37:10
##

# MacPorts Installer addition on 2018-02-08_at_16:37:10: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.



# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && .  "/usr/local/etc/profile.d/bash_completion.sh"
test -f ~/.git-completion.bash && . $_
alias python=python3
alias pip=pip3

alias ctags='/usr/local/bin/ctags'
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -l -g ""'
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
