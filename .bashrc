# Use zendev develop environment by default.
zendev use develop

# zendev aliases
alias ds="zendev devshell"

# serviced aliases
alias s="serviced"
alias ss="serviced service"
alias ssa="serviced service attach"
alias st="serviced template"
alias std="service template deploy"

# http://code-worrier.com/blog/git-branch-in-bash-prompt/
source ~/.git-prompt.sh
