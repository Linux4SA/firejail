# Firejail profile for kdeinit4
# This file is overwritten after every install/update
# Persistent local customizations
include kdeinit4.local
# Persistent global definitions
include globals.local

# use outside KDE Plasma 4

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

include whitelist-var-common.inc

caps.drop all
netfilter
no3d
nogroups
nonewprivs
# nosound - disabled for knotify
noroot
nou2f
novideo
notv
protocol unix,inet,inet6,netlink
seccomp
shell none

private-bin kdeinit4,kbuildsycoca4,kded4,knotify4
private-dev
private-tmp

noexec ${HOME}
noexec /tmp
