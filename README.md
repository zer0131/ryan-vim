# VIM配置

## 安装Vundle

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

## 下载配置文件

```
git clone https://github.com/zer0131/ryan-vim.git

cp ryan-vim/vimrc ~/.vimrc
```

## 使用Vundle安装插件

安装插件
```
:PluginInstall
```

更新插件
```
:PluginUpdate
```

安装插件列表
```
:PluginList
```

清理无用插件
```
:PluginClean
```

搜索插件
```
:PluginSearch [plugin name]
```

* Vundle使用请点击链接：[Vundle手册](https://github.com/VundleVim/Vundle.vim)

## 常用插件介绍

### nerdtree

左侧目录结构插件，git地址：[https://github.com/scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)

### nerdcommenter

注释插件，git地址：[https://github.com/scrooloose/nerdcommenter](https://github.com/scrooloose/nerdcommenter)

### ctrlp.vim

全目录搜索插件，git地址：[https://github.com/kien/ctrlp.vim](https://github.com/kien/ctrlp.vim)

### indentLine

代码缩进线显示插件，git地址：[https://github.com/Yggdroot/indentLine](https://github.com/Yggdroot/indentLine)

### vim-powerline

vim状态栏插件，git地址：[https://github.com/Lokaltog/vim-powerline](https://github.com/Lokaltog/vim-powerline)

### vim-monokai

主题，git地址：[https://github.com/sickill/vim-monokai](https://github.com/sickill/vim-monokai)

### vim-fugitive

vim中使用git命令插件，git地址：[https://github.com/tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)

### vim-gitgutter

vim中展示git中修改diff，git地址：[https://github.com/airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter)

### syntastic

代码语法检测插件，git地址：[https://github.com/vim-syntastic/syntastic](https://github.com/vim-syntastic/syntastic)

关于PHP语法检测默认的支持不够完美，推荐[PHP_CodeSniffer](https://github.com/squizlabs/PHP_CodeSniffer)

### vim-sftp-sync

vim中ftp上传插件，git地址：[https://github.com/eshion/vim-sftp-sync](https://github.com/eshion/vim-sftp-sync)

### vim-go

vim中golang插件，git地址：[https://github.com/fatih/vim-go](https://github.com/fatih/vim-go)

### tagbar

生成文件标签插件，git地址：[https://github.com/majutsushi/tagbar](https://github.com/majutsushi/tagbar)

这个插件使用前提是需要安装[ctags](http://ctags.sourceforge.net/)
