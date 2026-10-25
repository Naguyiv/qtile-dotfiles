[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
alias cdqd="cd /home/$USER/qtile-dotfiles"

# VM & SSH Fixes
export LIBGL_ALWAYS_SOFTWARE=1
QT_QUICK_BACKEND=software
alias quickshell="WAYLAND_DISPLAY=wayland-0 quickshell"
