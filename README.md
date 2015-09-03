# Setup

Clone git repository

```sh
git clone https://github.com/yokomotod/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

Make symbolic links which you want

```sh
ln -s .dotfiles/.zshrc .dotfiles/.gitconfig .dotfiles/.gitignore_global .dotfiles/.gemrc ~/.

mkdir ~/.zshrc.d
ln -s .dotfiles/.zshrc.d/rbenv.zsh ~/.zshrc.d/
```

Git hooks

```sh
git clone https://github.com/yokomotod/git-hooks.git ~/.dotfiles/.gittemplate/hooks
ln -s .dotfiles/.gittemplate ~/.
```

You need `diff-highlight` for use `.gitconfig`, like

```sh
ln -s ../Cellar/git/2.5.1/share/git-core/contrib/diff-highlight/diff-highlight /usr/local/bin/
```

You have to byte compile elisps for use `.emacs.d`

```sh
cd ~/dotfiles/.emacs.d/
./batch-byte-compile.sh
```


You need `Vundle` for `.vimrc`, and then you can fetch vim plugins by Vundle

```sh
git clone https://github.com/VundleVim/Vundle.vim.git ~/.dotfiles/.vim/bundle/Vundle.vim

(vim command)
:BundleInstall
```
