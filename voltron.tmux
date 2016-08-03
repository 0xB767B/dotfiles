# vim: ft=tmux
split-window -h -l 23 'voltron view reg -v'
split-window -v 'voltron view cmd "fr v"'
select-pane -L
split-window -p 30 'voltron view stack'
split-window -h 'voltron view disasm'
select-pane -U
split-window -h 'voltron view bt'
split-window 'voltron view cmd "di -l"'
split-window -l 11 'voltron view cmd "x/32x \$pc"'
select-pane -L

