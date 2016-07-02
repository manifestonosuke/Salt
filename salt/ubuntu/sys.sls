{% from "map.jinja" import map with context %}

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
      - whoopsie

geoip-bin:
  pkg.installed

ModemManager:
  service:
   - disabled: True
   - dead

unity-tweak-tool:
  pkg:
    - installed
    - onlyif: 
      - dpkg -s unity
