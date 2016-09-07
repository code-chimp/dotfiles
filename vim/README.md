## Instructions

1. Install [vim-plug](https://github.com/junegunn/vim-plug)
2. Install [powerline fonts](https://github.com/powerline/fonts) (at least UbuntuMono)
3. Copy .vimrc to your home folder
4. Copy .gvimrc to your home folder
5. launch vim
6. :PlugInstall!
7. ???
8. Profit!

### Windows (additional handholding required)

1. Install Python 2.7.9 64bit from python.org
2. Install [CMake](https://cmake.org/download/)
3. Install [powerline fonts](https://github.com/powerline/fonts) (at least UbuntuMono)
3. Install [editorconfig-core](https://github.com/editorconfig/editorconfig-core-c)
4. Install latest 64bit Vim from [here](https://bintray.com/micbou/generic/vim)
5. Install [vim-plug](https://github.com/junegunn/vim-plug)
6. ```mkdir $env:USERPROFILE\tmp```
7. Copy \_vimrc to $env:USERPROFILE
8. Copy \_gvimrc to $env:USERPROFILE
9. launch vim
10. :PlugInstall!
11. Launch an MSBuild command prompt from Visual Studio or Visual Studio Community menu
12. ```cd %USERPROFILE\vimfiles\plugged\YouCompleteMe```
13. ```python install.py --omnisharp-completer --tern-completer```
14. Profit!!!
