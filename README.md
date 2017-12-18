# vimplugins
My supercool Vim8 config

## Replicating the repository on a machine
```
option 1 (~/.vim should be empty):
  cd ~/.vim
  git clone --recursive https://github.com/z10n0101/vimplugins.git .

option 2:
  git clone --recursive https://github.com/z10n0101/vimplugins.git
  ln -sf vimplugins ~/.vim
  ln -sf vimplugins/vimrc ~/.vimrc
  vim
  :helptags ALL
```

## Installing plugins
```
git submodule add https://github.com/repname/foo.git pack/plugins/start/foo
git submodule add https://github.com/repname/bar.git pack/plugins/opt/bar
git commit -m "Added submodules."
```
## Removing plugins
```
cd ~/.vim
git submodule deinit pack/plugins/start/foo
git rm -r pack/plugins/start/foo
rm -r .git/modules/pack/plugins/start/foo
```
## Updating plugins
```
cd ~/.vim/pack/plugins/start/foo
git pull origin master
```
## Update all plugins
```
cd ~/.vim
git submodule foreach git pull origin master
```
## Commit
```
cd ~/.vim
git commit -am "Updated plugins."
```
