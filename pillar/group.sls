{% if grains['os_family'] == 'RedHat' -%}
  sudogrp: wheel
{% else -%}
  sudogrp: sudo
{% endif %}
