# source/refresh with r
unbind r
bind r source-file ~/.tmux.conf

# set prefix/leader key to ctrl-s from default (ctrl-b)
set -g prefix C-s
unbind-key C-b
bind-key C-s send-prefix

# navigate panes with vim bindings 
setw -g mode-keys vi
bind-key h select-pane -L
bind-key j select-pane -D
bind-key k select-pane -U
bind-key l select-pane -R

bind -n C-h select-pane -L
bind -n C-j select-pane -D
bind -n C-k select-pane -U
bind -n C-l select-pane -R

# open panes in pwd
bind '"' split-window -v -c "#{pane_current_path}"
bind % split-window -h -c "#{pane_current_path}"
