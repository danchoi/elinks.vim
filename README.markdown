# elinks.vim

This Vim plugin integrates Vim with ELinks (the text-mode web browser).

## Synopsis

    <leader>o
    <leader>O

    <C-j>
    <C-k>

    :[n]LMarks
    :[n]LHist

    <leader> is your mapleader. Probably , or \

Longer version:

    <leader>o opens the hyperlink under or after the cursor in ELinks
    <leader>O opens the hyperlink under or after the cursor in a new ELinks tab

    <C-j> moves the cursor to the next hyperlink in the Vim buffer
    <C-k> moves the cursor to the previous hyperlink

    :[n]LMarks prints the last n ELinks bookmarks into the Vim buffer (default n is 1)
    :[n]LHist prints the last n items from ELinks' history into the Vim buffer (default n is 1)

To use this plugin, you must have ELinks already running in another Terminal
window or Tmux/Screen pane.  The plugin talks to the running instance of
ELinks.


## Motivation

I like to keep my notes and web URLs in plain text files, edited in Vim.  But I
grew tired to copying and pasting URLs from Firefox to Vim and vice versa.  I
already enjoyed using ELinks to read webpages with less distraction.  It was
natural to try to come up with a more integrated workflow between these two
applications. 

Web bookmarks are important data. But most web browsers and bookmark management
tools make this data clunky to export and hard to impossible to use with Unix
tools. Vim + ELinks + plain text files are a good alternative & more in tune
with the Unix philosophy.

**LONG LIVE PLAIN TEXT!**

## Install

Copy plugin/elinks.vim to ~/.vim/plugin/

Quick install:

    curl https://raw.github.com/danchoi/elinks.vim/master/plugin/elinks.vim > ~/.vim/plugin/elinks.vim

## Customize

If you want to change the keybindings, just edit the `nnoremap` lines at the
bottom of the plugin file.

