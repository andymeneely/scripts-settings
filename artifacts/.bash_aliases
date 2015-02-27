#Andy's aliases

alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'
alias duh='du -h --max-depth=1'

#Visual-less
alias vless='/usr/share/vim/vim73/macros/less.sh'

#Good for showing tab-delimited tables
alias vtab="column -t -s $'\t'"

# Rails goodness
alias vim-last-migration='vim $(ls db/migrate/* | tail -n1)'
