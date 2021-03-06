packagekit:
  service:
   - disabled: True
   - dead
  pkg:
   - removed

dracut-config-rescue:
  pkg:
    - removed

avahi-daemon:
  service:
   - disabled: True
   - dead

abrtd:
  service:
   - disabled: True
   - dead
  pkg:
   - removed

all-abrtd:
  pkg.removed:
    - pkgs:
      - abrt-addon-coredump-helper 
      - abrt-gui-libs 
      - abrt-libs

garbage:
  pkg.removed:
    - pkgs:
      - openssh-askpass
      - mcelog


ModemManager:
  service.disabled

/etc/init.d/livesys:
  file.absent

/etc/init.d/livesys-late:
  file.absent

gssproxy:
  service:
   - disabled: True
   - dead

dnf-makecache:
  service:
   - disabled: True
   - dead

proc-fs-nfsd.mount:
  service:
   - disabled: True
   - dead

firewalld.service:
  service:
   - disabled: True
   - dead

unbound-anchor.service:
  service:
   - disabled: True
   - dead

colord.service:
  service:
   - disabled: True
   - dead

dnf-makecache.service:
  service:
   - disabled: True
   - dead

avahi-daemon.service:
  service:
    - disabled: True
    - dead
