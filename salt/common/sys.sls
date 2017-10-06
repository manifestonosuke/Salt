
syspkg:
  pkg.installed:
    - pkgs :
      - sysstat
      - tcpdump
      - dstat
      - iftop
      - powertop

net.ipv6.conf.all.disable_ipv6:
  sysctl.present:
    - value: 1
 
net.ipv6.conf.default.disable_ipv6:
 sysctl.present:
  - value: 1
 
{% for iface in salt['grains.get']('ip6_interfaces') %}
net.ipv6.conf.{{iface}}.disable_ipv6:
  sysctl.present:
    - value: 1
{% endfor %}


{% if grains['init'] == 'systemd' %}
/etc/systemd/system.conf:
  file.replace:
    - pattern: ^#?DefaultTimeoutStopSec=.* 
    - repl: DefaultTimeoutStopSec=15s
{% endif %}

garbage common:
  pkg.removed:
    - pkgs:
      - steam
      - openssh-askpass

/etc/kernel/postinst.d/zz-update-grub:
  file.absent

allow wheel:
  file.uncomment:
    - name: /etc/sudoers
    - regex: ^ *%wheel

disable no pass:
  file.comment:
    - name: /etc/sudoers
    - regex: ^.*NOPASS

allow sudoers.d:
  file.uncomment:
    - name: /etc/sudoers
    - regex: ^ *%wheel
