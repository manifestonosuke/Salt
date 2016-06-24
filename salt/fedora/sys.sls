{% from "map.jinja" import map with context %}
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


ModemManager:
  service.disabled

net.ipv6.conf.all.disable_ipv6:
  sysctl.present:
    - value: 1
 
net.ipv6.conf.default.disable_ipv6:
 sysctl.present:
  - value: 1
 
net.ipv6.conf.lo.disable_ipv6:
  sysctl.present:
    - value: 1

/etc/init.d/livesys:
  file.absent

/etc/init.d/livesys-late:
  file.absent
