# Firejail profile for fbreader
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/fbreader.local
# Persistent global definitions
include /etc/firejail/globals.local

noblacklist ${HOME}/.FBReader

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

caps.drop all
netfilter
nodvd
nonewprivs
noroot
nosound
notv
protocol unix,inet,inet6
seccomp
shell none

private-bin fbreader,FBReader
private-dev
private-tmp
