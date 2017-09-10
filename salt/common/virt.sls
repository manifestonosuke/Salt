{% from "sw.jinja" import sw with context %}
{% set nonext = ["Arch","Fedora"] %}


{{ sw.virtualbox }}:
  pkg.latest
others:
  pkg.installed:
    - pkgs:
{% if salt['grains.get']('os') not in ( "Arch","Fedora" ) %} 
      - virtualbox-ext-pack
{% endif %}
      - vagrant
