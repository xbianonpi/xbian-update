TARGETS = kbd urandom hostname.sh plymouth-log pppd-dns procps screen-cleanup kmod networking bootmisc.sh rpcbind nfs-common
INTERACTIVE = kbd
networking: urandom
rpcbind: networking
nfs-common: rpcbind
