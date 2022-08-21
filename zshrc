export ZSH="$HOME/.oh-my-zsh"

# ZSH plugins
source $ZSH/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/custom/plugins/zsh-completions/zsh-completions.plugin.zsh
source $ZSH/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ZSH prompt theme
source $ZSH/themes/gentoo.zsh-theme

# ZSH library
source $ZSH/oh-my-zsh.sh

# Aliases
alias open=thunar
alias ls=exa --icons
alias find=fd
alias grep=sift
alias ripgrep=rg

# Path
for _tmp_path in {"$HOME/.cargo/bin","$HOME/.local/bin"};
    do export PATH="$PATH:$_tmp_path";
done;
