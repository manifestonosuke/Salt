{% if grains['os_family'] == 'RedHat' -%}
  sudogrp: wheel
{% elif grains['os_family'] == 'Suse' -%}
  sudogrp: wheel
{% elif grains['os_family'] == 'Arch' -%}
  sudogrp: wheel
{% else -%}
  sudogrp: sudo
{% endif %}
