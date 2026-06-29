#
# ~/.bashrc
#
[[ $- != *i* ]] && return
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias clr="clear; echo -en \"\e[3J\""
alias clear="clear; echo -en \"\e[3J\""
_get_theme_color() {
    cat ~/.cache/walker_theme_color 2>/dev/null || echo "219"
}
_set_ps1() {
    local color
    color=$(_get_theme_color)
    PS1="\[\e[38;5;${color}m\]󰣇 \[\e[38;5;${color}m\]\w \[\e[38;5;${col>
}
PROMPT_COMMAND="_set_ps1"