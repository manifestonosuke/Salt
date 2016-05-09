{% from "map.jinja" import map with context %}
packagekit:
  service:
   - disabled: True
   - dead
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

garbage:
  pkg.removed:
    - pkgs:
      - openssh-askpass


ModemManager:
  service:
   - disabled: True
   - dead

net.ipv6.conf.all.disable_ipv6:
  sysctl.present:
    - value: 1
 
net.ipv6.conf.default.disable_ipv6:
 sysctl.present:
  - value: 1
 
net.ipv6.conf.lo.disable_ipv6:
  sysctl.present:
    - value: 1


