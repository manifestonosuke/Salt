{% from "map.jinja" import map with context %}

{% set codename = salt['grains.get']('oscodename') %}

{% if grains['os'] == 'Ubuntu' %}
'deb http://archive.canonical.com/ubuntu {{ codename }} partner':
  pkgrepo.managed
{% endif %}

sys-pkg:
  pkg:
    - installed
    - pkgs:
      - rsync
      - ncftp
      - fsarchiver
      - git
      - sudo
      - tmux
      - {{ pillar['vim'] }}

vpn-pkg:
  pkg:
    - installed
    - pkgs:
      - network-manager-openconnect
      - network-manager-openvpn
      - network-manager-vpnc

internet:
  pkg:
    - installed
    - pkgs:
      - {{ pillar['firefox'] }}
      - {{ pillar['thunderbird'] }}
      - skype
      - {{ map.chromium }}

{% if grains['osfullname'] == 'Debian' %}
/usr/share/applications/firefox.desktop:
  file.symlink:
    - target: /usr/share/applications/iceweasel.desktop
/usr/share/applications/thunderbird.desktop:
  file.symlink:
    - target: /usr/share/applications/icedove.desktop
{% endif %}
