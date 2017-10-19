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

Name|Info|Url|Remark
------|------|------|------
nerdtree|目录结构插件|[https://github.com/scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)|N/A
nerdcommenter|注释插件|[https://github.com/scrooloose/nerdcommenter](https://github.com/scrooloose/nerdcommenter)|N/A
ctrlp.vim|搜索文件插件|[https://github.com/kien/ctrlp.vim](https://github.com/kien/ctrlp.vim)|N/A
indentLine|代码缩进线显示插件|[https://github.com/Yggdroot/indentLine](https://github.com/Yggdroot/indentLine)|N/A
vim-powerline|状态栏插件|[https://github.com/Lokaltog/vim-powerline](https://github.com/Lokaltog/vim-powerline)|N/A
vim-monokai|monokai主题|[https://github.com/sickill/vim-monokai](https://github.com/sickill/vim-monokai)|N/A
vim-fugitive|git命令插件|[https://github.com/tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)|N/A
vim-gitgutter|vim中展示git中修改diff|[https://github.com/airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter)|N/A
syntastic|语法检测|[https://github.com/vim-syntastic/syntastic](https://github.com/vim-syntastic/syntastic)|N/A
vim-sftp-sync|ftp插件|[https://github.com/eshion/vim-sftp-sync](https://github.com/eshion/vim-sftp-sync)|N/A
vim-go|golang插件|[https://github.com/fatih/vim-go](https://github.com/fatih/vim-go)|N/A
tagbar|生成文件标签插件|[https://github.com/majutsushi/tagbar](https://github.com/majutsushi/tagbar)|这个插件使用前提是需要安装[ctags](http://ctags.sourceforge.net/)
ctrlsf.vim|全局搜索工具|[https://github.com/dyng/ctrlsf.vim](https://github.com/dyng/ctrlsf.vim)|插件使用前先安装ag或ack，建议安装ag，速度更快[ag](https://github.com/ggreer/the_silver_searcher)

