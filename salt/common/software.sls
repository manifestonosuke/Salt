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
{% if grains['os'] == 'Arch' %}
      - networkmanager-openconnect
      - networkmanager-openvpn
      - networkmanager-vpnc
{% else %}
      - network-manager-openconnect
      - network-manager-openvpn
      - network-manager-vpnc
{% endif %}

app:
  pkg.installed:
    - pkgs:
      - keepassx
      - xclip

internet:
  pkg:
    - installed
    - pkgs:
      - {{ pillar['firefox'] }}
      - {{ pillar['thunderbird'] }}
      - {{ pillar['chromium'] }}

{% if grains['os'] != 'Arch' and grains['os'] != 'Debian' %}
      - skype
{% endif %}
