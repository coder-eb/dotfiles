# Random stuff
alias vim="nvim"
export DOTFILES_PATH="$HOME/dotfiles"

# Fast-travel aliases
alias gotod="$HOME/downloads"
alias gotodot=$DOTFILES_PATH
alias gocode="$HOME/coding"
alias gotonvim="$HOME/.config/nvim"

# Fast-travel in FLOW
alias gotoapi="$HOME/Matoke/flow-api"
alias gotoui="$HOME/Matoke/flow_admin_ui"
alias gotomicro="~/MicroService/flow-api-micro"

# Laravel stuff
alias tinker="php artisan tinker"
alias serv="php artisan serve"
alias migrate="php artisan migrate"
alias migration="php artisan make:migration"

# SSH stuff
alias ssh_test="ssh -i $HOME/.ssh/flow-test-server l2user@13.234.42.35"
alias ssh_uat="ssh -i $HOME/.ssh/uat-server-key.pem centos@65.1.59.91"

# Short functions
alias update="sudo apt update && sudo apt upgrade"
alias rmzone="find . -type f -name '*:Zone.Identifier' -ls -delete"
