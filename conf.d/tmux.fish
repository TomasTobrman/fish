if status is-interactive
and not set -q TMUX
	tmux new-session -A -s main
end
