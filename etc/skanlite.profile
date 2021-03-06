# Firejail profile for skanlite
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/skanlite.local
# Persistent global definitions
include /etc/firejail/globals.local


include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

caps.drop all
# net none
netfilter
nodvd
nogroups
nonewprivs
noroot
nosound
notv
novideo
protocol unix,netlink
# skanlite makes ioperm system calls, which are blacklisted by default.
seccomp.drop @clock,@cpu-emulation,@debug,@module,@obsolete,@reboot,@resources,@swap,acct,add_key,bpf,chroot,fanotify_init,io_cancel,io_destroy,io_getevents,io_setup,io_submit,iopl,ioprio_set,kcmp,keyctl,mount,name_to_handle_at,nfsservctl,ni_syscall,open_by_handle_at,pciconfig_iobase,pciconfig_read,pciconfig_write,personality,pivot_root,process_vm_readv,ptrace,remap_file_pages,request_key,s390_mmio_read,s390_mmio_write,setdomainname,sethostname,syslog,umount,umount2,userfaultfd,vhangup,vmsplice
shell none

# private-bin skanlite,kbuildsycoca4
# private-dev
# private-etc
# private-tmp
