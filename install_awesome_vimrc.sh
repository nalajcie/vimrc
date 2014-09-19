cd ~/.vim_runtime

echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"

# get special fonts for airline
mkdir ~/.fonts
cd ~/.fonts
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf
# you might be root to do it!
fc-cache -vf ~/.fonts/

mkdir -p ~/.config/fontconfig/conf.d/
cd ~/.config/fontconfig/conf.d/
wget https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf

#DONE!


