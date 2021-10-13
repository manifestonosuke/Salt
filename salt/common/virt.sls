{% from "map.jinja" import map with context %}

vbox:
  pkg.installed:
    - pkgs:
      - vagrant
      - {{ map.virtualbox }}
{% if grains['os'] != 'Arch' %}
      - virtualbox-ext-pack
{% else %}
      - virtualbox-host-modules-arch
{% endif %}

