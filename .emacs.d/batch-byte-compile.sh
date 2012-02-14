#!/bin/sh

rm init.elc **/*.elc

emacs -batch -l init.el -f batch-byte-compile init.el **/*.el

