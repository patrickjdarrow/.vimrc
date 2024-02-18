sudo apt update && \
sudo apt install -y tmux

if [ -f ~/.tmux.conf ]; then
	suffix=$(date +%s)
	backup_dst=~/.tmux.conf_$suffix
	echo "Backing up existing .tmux.conf -> $backup_dst"
	mv ~/.tmux.conf $backup_dst
fi

echo "Copying .tmux.conf to ~/.tmux.conf"
cp ./.tmux.conf ~/.tmux.conf


echo "Updating tmux"
tmux source-file ~/.tmux.conf

