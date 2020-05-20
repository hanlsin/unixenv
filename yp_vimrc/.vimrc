" call yp_vimrc
if filereadable($YP_VIMRC_DIR . "/yp_vimrc")
	so $YP_VIMRC_DIR/yp_vimrc
endif
