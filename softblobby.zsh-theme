ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='$(now)$(username)$(directory)$(git_info)%f%k
╰→  '

now () {
    echo '%F{052}%K{205}╭ 🦄  %D{%b %e %a}.%t  %f%k%F{205}%K{012}\ue0b0%f%k'
}

username() {
    echo '%F{255}%K{012}  🛹  %B%n%b   %f%k%F{012}%K{051}\ue0b0%f%k'
}

directory () {
    echo '%F{234}%K{051}  🎀  %0~  %f%k'
}

git_info () {
    GIT_INFO="$(git_prompt_info)"
    if [[ $GIT_INFO == "" ]] then
        echo "%F{051}%K{236}\ue0b0%f%k"
    else
        echo "%F{051}%K{147}\ue0b0%f%k%F{234}%K{147}  🛼   $(git_prompt_info)  %F{147}%K{236}\ue0b0%f%k"
    fi
}