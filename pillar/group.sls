{% if grains['os_family'] == 'RedHat' -%}
sudogrp: wheel
#{% elif grains['os_family'] == 'Debian' -%}
{% else -%}
sudogrp: sudo
{% endif %}
