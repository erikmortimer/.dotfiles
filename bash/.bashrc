
# Color definitions
blk='\[\e[30m\]'   # Black
red='\[\e[31m\]'   # Red
grn='\[\e[32m\]'   # Green
ylw='\[\e[33m\]'   # Yellow
blu='\[\e[34m\]'   # Blue
pur='\[\e[35m\]'   # Purple
cyn='\[\e[36m\]'   # Cyan
wht='\[\e[37m\]'   # White
clr='\[\e[00m\]'      # Reset

# Alias definitions
alias h='history'
alias ll='ls -la --color=auto'
alias ls='ls --color=auto'
alias df='df -h'
alias vim='nvim'

# Prompt definition
PROMPT_AT=@

bash_prompt(){
    local P='$' dir="${PWD##*/}" u=$ylw h=$blu

    [[ $EUID == 0 ]] && P='#' && u=$r && p=$u # root
    [[ $PWD = / ]] && dir=/
    [[ $PWD = "$HOME" ]] && dir='~'

    B=$(git branch --show-current 2>/dev/null)
    [[ $dir = "$B" ]] && B=.

    [[ $B = master || $B = main ]] && b="$red"
    [[ -n "$B" ]] && B="$wht($b$B$wht)" # If string is null, then...

    PS1="$pur\u$wht$PROMPT_AT$blu\h$wht:$pur$dir$B$ylw$P$clr "
}

PROMPT_COMMAND="bash_prompt"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
. "$HOME/.cargo/env"
