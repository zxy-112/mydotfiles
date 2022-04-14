
if [[ -e ~/.bash_alias ]]; then
    source ~/.bash_alias
fi

set -o vi
bindkey '^R' history-incremental-search-backward

alias pokv='python3 ok --local -v'
alias poku='python3 ok --local -u'
alias pok='python3 ok --local'

export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890
export PATH="$PATH:/Users/zhangxingyu/Library/Python/3.8/bin"
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(fasd --init auto)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
