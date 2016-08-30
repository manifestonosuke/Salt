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

{% set debrel = app_defaults.get(salt.grains.get('lsb_distrib_id') %}
multimedia:
  pkgrepo.managed:
    - humanname: deb-multimedia
    - name: deb http://www.deb-multimedia.org debrel main
    - file: /etc/apt/sources.list.d/deb-multimedia.list
    - key_url: salt://deb-multimedia/files/marillat.pub

multkeyring:
  pkg.installed:
    - name: deb-multimedia-keyring
    - skip_verify: True
