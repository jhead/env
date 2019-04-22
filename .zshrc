# load zgen
source "${HOME}/.zgen/zgen.zsh"

# if the init scipt doesn't exist
if ! zgen saved; then
    echo "Creating a zgen save"

    # oh-my-zsh but less bloat
    zgen load ~/.zgen/robbyrussell/oh-my-zsh-master/lib/theme-and-appearance.zsh
    zgen load ~/.zgen/robbyrussell/oh-my-zsh-master/lib/clipboard.zsh
    zgen load ~/.zgen/robbyrussell/oh-my-zsh-master/lib/key-bindings.zsh
    zgen load ~/.zgen/robbyrussell/oh-my-zsh-master/lib/history.zsh
    zgen load ~/.zgen/robbyrussell/oh-my-zsh-master/lib/directories.zsh
    zgen load ~/.zgen/robbyrussell/oh-my-zsh-master/lib/completion.zsh

    # custom
    zgen load chrissicool/zsh-256color
    zgen load zsh-users/zsh-autosuggestions
    zgen load zsh-users/zsh-history-substring-search
    zgen load zsh-users/zsh-completions src
    zgen load ~/.zcustom/custom.zsh-theme

    # must be last
    zgen load zsh-users/zsh-syntax-highlighting

    # save all to init script
    zgen save
fi

# paths
PATH="$PATH:$HOME/Library/Python/2.7/bin"

# aliases
alias ls='ls -G'
alias l='ls -lah'
alias zreset='rm ~/.zgen/init.zsh; eval zsh'
alias nf=neofetch

# envs
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
