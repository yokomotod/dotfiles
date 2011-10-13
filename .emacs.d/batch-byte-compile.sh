#!/bin/sh

rm **/*.elc

emacs -batch -l init.el -f batch-byte-compile **/*.el

