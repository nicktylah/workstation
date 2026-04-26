## Setting up vim plugins directly

These are the manual instructions -- they're also contained in `../setup.sh` if you just want to run that.

Chris' `.vimrc` uses [vim-plug](https://github.com/junegunn/vim-plug) to manage plugins. To get it, run:

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Once that's complete, start up `vim` and run `:PlugInstall`
