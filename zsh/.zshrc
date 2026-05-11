export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="awesomepanda"
plugins=(
  git
)
source $ZSH/oh-my-zsh.sh

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
source ~/.config/zsh/config
source ~/.config/zsh/env.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Auto complete plugin
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=yellow'


alias ll='ls -la'
alias gs='git status'


# pnpm
export PNPM_HOME="/home/ori/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# bun completions
[ -s "/home/ori/.bun/_bun" ] && source "/home/ori/.bun/_bun"

# Installs
eval "$(~/.local/bin/mise activate zsh)"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="/home/ori/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/home/ori/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"
