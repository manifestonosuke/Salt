
syspkg:
  pkg.installed:
    - pkgs :
      - sysstat
      - tcpdump
      - dstat
      - iftop

net.ipv6.conf.all.disable_ipv6:
  sysctl.present:
    - value: 1
 
net.ipv6.conf.default.disable_ipv6:
 sysctl.present:
  - value: 1
 
net.ipv6.conf.lo.disable_ipv6:
  sysctl.present:
    - value: 1

net.ipv6.conf.wls1.disable_ipv6:
  sysctl.present:
    - value: 1

net.ipv6.conf.ens5.disable_ipv6:
  sysctl.present:
    - value: 1

{% if grains['init'] == 'systemd' %}
/etc/systemd/system.conf:
  file.replace:
    - pattern: ^#?DefaultTimeoutStopSec=.* 
    - repl: DefaultTimeoutStopSec=15s
{% endif %}
