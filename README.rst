dotvim
======

Installation
------------

Backup your current configuration::

    if [ -e ~/.vim    ]; then mv ~/.vim    ~/.vim.old;    fi
    if [ -e ~/.vimrc  ]; then mv ~/.vimrc  ~/.vimrc.old;  fi
    if [ -e ~/.gvimrc ]; then mv ~/.gvimrc ~/.gvimrc.old; fi

Clone this repository::

    git clone git@github.com:michaelcontento/dotvim.git ~/.vim

Create symlinks::

    ln -s ~/.vim/vimrc  ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc
    
Switch to ``~/.vim`` and fetch all submodules::

    cd ~/.vim
    git submodule init
    git submodule update

When you start VIM for the first time all dependend plugins will be 
installed automatically (thanks to vim-addon-manager).

Uninstall
---------

Just restore your old backup files::

    rm -rf ~/.vim
    if [ -e ~/.vim.old    ]; then mv ~/.vim.old    ~/.vim;    fi
    if [ -e ~/.vimrc.old  ]; then mv ~/.vimrc.old  ~/.vimrc;  fi
    if [ -e ~/.gvimrc.old ]; then mv ~/.gvimrc.old ~/.gvimrc; fi

License
-------

    Copyright 2009-2010 Michael Contento <michaelcontento@gmail.com>

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
