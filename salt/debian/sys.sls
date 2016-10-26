
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

{% if debrel == "sid" %}
security:
  pkgrepo.absent:
    - name:  http://security.debian.org/ {{ debrel }}/updates main
update:
  pkgrepo.absent:
    - name:  http://ftp.tsukuba.wide.ad.jp/debian/ {{debrel}}-updates main
{% else %}
security:
  pkgrepo.managed:
    - name:  http://security.debian.org/ {{ debrel }}/updates main
update:
  pkgrepo.managed:
    - name:  http://ftp.tsukuba.wide.ad.jp/debian/ {{debrel}}-updates main
{% endif %}

multimedia:
  pkgrepo.managed:
    - humanname: deb-multimedia
    - name: deb http://www.deb-multimedia.org debrel main
    - dist: {{ debrel }}
    - file: /etc/apt/sources.list.d/deb-multimedia.list

deb-multimedia-keyring:
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

/usr/share/applications/chromium-browser.desktop:
  file.symlink:
    - target: /usr/share/applications/chromium.desktop 
