{% if grains['os_family'] == 'RedHat' %}
skype:
  pkg.installed:
    - source: https://repo.skype.com/latest/skypeforlinux-64-alpha.rpm
{% elif grains['os'] == 'Ubuntu' %}
skype:
  pkgrepo.managed:
    - name: deb http://archive.canonical.com/ubuntu {{ grains['oscodename'] }} partner
    - file: /etc/apt/sources.list
    - consolidate: True
  pkg.installed:
    - name: skype
{% endif %}
