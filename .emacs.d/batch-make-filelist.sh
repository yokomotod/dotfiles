#!/bin/sh

ruby ~/.emacs.d/make-filelist.rb > ~/.emacs.d/all.filelist.tmp

mv ~/.emacs.d/all.filelist.tmp ~/.emacs.d/all.filelist

