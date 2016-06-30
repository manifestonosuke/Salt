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

/etc/init.d/livesys:
  file.absent

/etc/init.d/livesys-late:
  file.absent
