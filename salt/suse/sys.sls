packagekit:
  service:
   - disabled: True
   - dead
  pkg:
   - removed

/usr/share/sddm/scripts/Xsetup:
  file.append:
    - text: setxkbmap fr

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

firewalld.service:
  service:
   - disabled: True
   - dead

fix sudoers2:
  file.comment:
    - name: /etc/sudoers
    - regex: Defaults targetpw

gtk3-metatheme-breeze:
  pkg.installed

/etc/modprobe.d/50-blacklist.conf:
  file.append:
    - text: blacklist nouveau
