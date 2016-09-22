{% from "sw.jinja" import sw with context %}

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
      - wget
      - {{ sw.vim }}

vpn-pkg:
  pkg:
    - installed
    - pkgs:
{% if grains['os'] == 'Arch' %}
      - networkmanager-openconnect
      - networkmanager-openvpn
      - networkmanager-vpnc
{% else %}
      - network-manager-openconnect
      - network-manager-openvpn
      - network-manager-vpnc
{% endif %}

internet:
  pkg:
    - installed
    - pkgs:
      - {{ sw.firefox }}
      - {{ sw.thunderbird }}
      - {{ sw.chromium }}

{% if grains['osfullname'] == 'Debian' %}
/usr/share/applications/firefox.desktop:
  file.symlink:
    - target: /usr/share/applications/iceweasel.desktop
/usr/share/applications/thunderbird.desktop:
  file.symlink:
    - target: /usr/share/applications/icedove.desktop
{% endif %}

