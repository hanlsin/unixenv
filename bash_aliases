
YP_PROFILE_DIR=~/.yp_profile

# for YP personal bash scripts
if [ -f $YP_PROFILE_DIR/yp_profile ]; then
	. $YP_PROFILE_DIR/yp_profile
fi

# Personal settings.
if [ -f ~/.yp_env_vars ]; then
	. ~/.yp_env_vars
fi

# local settings.
if [ -f ~/.local_env ]; then
	. ~/.local_env
fi
