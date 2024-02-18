sudo apt update && \
sudo apt install -y tmux


for file in ".tmux.conf" ".vimrc"; do
	if [ -f ~/$file ]; then
		suffix=$(date +%s)
		backup_dst=~/$file_$suffix
		echo "Backing up existing $file -> $backup_dst"
		mv ~/$file $backup_dst
	fi
	
	echo "Copying $file to ~/$file"
	cp ./$file ~/$file
done

echo "Updating Tmux"
tmux source-file ~/.tmux.conf
