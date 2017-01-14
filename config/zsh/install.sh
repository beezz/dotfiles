ZSHRC_LINK_NAME=$HOME/.zshrc
ZSHRC_LINK_TARGET=$(readlink -f $(dirname $0)/.zshrc)


unless()
{
	[ -e ${ZSHRC_LINK_NAME} ]
}


install()
{
	ln -s ${ZSHRC_LINK_TARGET} ${ZSHRC_LINK_NAME}
}


unless && echo '.zshrc already installed' || install
