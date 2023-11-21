if status is-interactive
	setenv EDITOR nvim

	setenv XDG_CONFIG_HOME "$HOME/.config"
	setenv XDG_DATA_HOME   "$HOME/.local/share"
	setenv XDG_STATE_HOME  "$HOME/.local/state"
	setenv XDG_CACHE_HOME  "$HOME/.cache"

	fish_add_path "/usr/local/opt/llvm/bin"
	fish_add_path "/usr/local/opt/curl/bin"
	fish_add_path "/usr/local/opt/openjdk/bin"

	set -gx JAVA_HOME "/usr/local/opt/openjdk/bin"
	# set -gx JAVA_HOME "/usr/libexec/java_home -v 21.0.1"
	set -gx PKG_CONFIG_PATH "/usr/local/opt/curl/lib/pkgconfig"

	function nvim-ks --wrap nvim; NVIM_APPNAME=nvim_kickstart nvim $argv; end
	function nvim-nyoom --wrap nvim; NVIM_APPNAME=nvim_nyoom nvim $argv; end
end
