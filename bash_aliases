# for YP personal bash scripts
if [ -f ~/.yp_profile/yp_profile ]; then
	. ~/.yp_profile/yp_profile
fi

# Personal settings.
if [ -f ~/.yp_env_vars ]; then
	. ~/.yp_env_vars
fi
