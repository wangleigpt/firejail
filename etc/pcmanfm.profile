# Firejail profile for pcmanfm
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/pcmanfm.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ${HOME}/.local/share/Trash
noblacklist ~/.config/libfm
noblacklist ~/.config/pcmanfm

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
# include /etc/firejail/disable-programs.inc

caps.drop all
# net none - see issue #1467, computer:/// location broken
no3d
nodvd
nonewprivs
noroot
nosound
notv
novideo
protocol unix
seccomp
shell none
tracelog
