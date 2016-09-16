{% from "map.jinja" import map with context %}

avahi-daemon:
  service:
   - disabled: True
   - dead

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

{% set debrel = salt['grains.get']('lsb_distrib_codename') %}
multimedia:
  pkgrepo.managed:
    - humanname: deb-multimedia
    - name: deb http://www.deb-multimedia.org debrel main
    - dist: {{ debrel }}
    - file: /etc/apt/sources.list.d/deb-multimedia.list

deb-multimedia-keyring::
  pkg.latest:
    - name: deb-multimedia-keyring
    - skip_verify: true
    - refresh: true

/etc/apt/preferences.d/deb-multimedia.conf:
  file.managed:
    - contents: |
        Package: *
        Pin: origin *.deb-multimedia.org
        Pin-Priority: $dmo_priority
    - owner: root
    - group: root
    - mode: 644
