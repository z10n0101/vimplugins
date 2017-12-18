# vimplugins
My supercool Vim8 config

<h2>Replicating the repository on a machine</h2>

git clone --recursive https://github.com/z10n0101/vimplugins.git
ln -sf vimplugins ~/.vim
ln -sf vimplugins/vimrc ~/.vimrc
vim
:helptags ALL

<h2>Installing plugins</h2>

git submodule add https://github.com/repname/foo.git pack/plugins/start/foo
git submodule add https://github.com/repname/bar.git pack/plugins/opt/bar
git commit -m "Added submodules."

<h2>Removing plugins</h2>

cd ~/.vim
git submodule deinit pack/plugins/start/foo
git rm -r pack/plugins/start/foo
rm -r .git/modules/pack/plugins/start/foo

<h2>Updating plugins</h2>

cd ~/.vim/pack/plugins/start/foo
git pull origin master

<h2>Update all plugins</h2>

cd ~/.vim
git submodule foreach git pull origin master

<h2>Commit</h2>

cd ~/.vim
git commit -am "Updated plugins."
