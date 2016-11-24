##############################################################################
# Copy vim and tmux configurations
##############################################################################

cp -r ./* ~/.vim
cp vimrc ~/.vimrc
cp tmux.conf ~/.tmux.conf
rm ~/.vim/install.sh
rm ~/.vim/vimrc
rm ~/.vim/.tmux.conf


##############################################################################
# Open terminal with tmux by default
##############################################################################

apt-get install tmux
echo "\n\n##############################################################################" >> ~/.bashrc
echo "# Start in tmux" >> ~/.bashrc
echo "##############################################################################" >> ~/.bashrc
echo "\nif command -v tmux>/dev/null; then\n  [[ ! \$TERM =~ screen ]] && [ -z \$TMUX ] && exec tmux\nfi" >> ~/.bashrc
