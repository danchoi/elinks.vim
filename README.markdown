# elinks.vim

This Vim plugin integrates Vim with Elinks (the text-mode web browser).

## Synopsis

    <leader>o
    <leader>O
    :[n]EMarks
    :[n]EHist

    <leader> is your mapleader. Probably , or \

Longer version:

    <leader>o opens the hyperlink under or after the cursor in Elinks
    <leader>O opens the hyperlink under or after the cursor in Elinks in a new Elinks tab
    :[n]EMarks prints the last n Elinks bookmarks into your Vim buffer (default n is 1)
    :[n]EHist prints the last n items from Elinks' history into your Vim buffer (default n is 1)

To use this plugin, you must have Elinks already running in another Terminal
window or Tmux/Screen pane.  The plugin talks to the running instance of
Elinks.


## Motivation

I like to keep my notes and web URLs in plain text files, edited in Vim.  But I
grew tired to copying and pasting URLs from Firefox to Vim and vice versa.  I
already enjoyed using Elinks to read webpages with less distraction.  It was
natural to try to come up with a more integrated workflow between these two
applications. 

Web bookmarks are important data. But most web browsers and bookmark management
tools make this data clunky to export and hard to impossible to use with Unix
tools. Vim + Elinks + plain text files are a good alternative & more in tune
with the Unix philosophy.


## Install

Copy plugin/elinks.vim to ~/.vim/plugin/

Quick install:

    curl https://raw.github.com/danchoi/elinks.vim/master/plugin/elinks.vim > ~/.vim/plugin/elinks.vim

## Customize

If you want to change the keybindings for `<leader>o` and `<leader>O`, just edit `nnoremap`
lines at the bottom of the plugin file.

