CWD = $(shell pwd)

install:
	ln --symbolic $(CWD)/zshenv ~/.zshenv
	ln --symbolic $(CWD)/zprofile ~/.zprofile
	ln --symbolic $(CWD)/zshrc ~/.zshrc


uninstall:
	unlink ~/.zshrc
	unlink ~/.zprofile
	unlink ~/.zshenv

