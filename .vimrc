" call yp_vimrc
if filereadable($HOME . "/yp_vimrc/yp_vimrc")
	so $HOME/yp_vimrc/yp_vimrc
endif
