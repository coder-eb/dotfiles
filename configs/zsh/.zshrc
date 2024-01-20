# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ANDROID_HOME=$HOME/Android
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
export XDG_CONFIG_HOME=$HOME/.config

# Where to search for executables?
NEOVIM_BIN=$HOME/.local/share/bob/nvim-bin
JAVA_BINARIES=$JAVA_HOME/bin:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools
LOCAL_BINARIES=/usr/local/bin:$HOME/.local/bin:$NEOVIM_BIN
GO_BINARY=/usr/local/go/bin
export PATH=$PATH:$LOCAL_BINARIES:$JAVA_BINARIES:$GO_BINARY

# X-X-X-------------------- START: ZSH - User configuration --------------------X-X-X

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"


# Would you like to use another custom folder than $ZSH/custom?
export DOTFILES=$HOME/dotfiles
ZSH_CUSTOM=$DOTFILES/configs/zsh/custom

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)


source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# X-X-X-------------------- END: ZSH - User configuration --------------------X-X-X


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
