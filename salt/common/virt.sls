{% from "sw.jinja" import sw with context %}
{% set nonext = ["Arch","Fedora"] %}


vbox:
  pkg.installed:
    - pkgs:
{% if salt['grains.get']('os') not in ( "Arch","Fedora" ) %} 
      - virtualbox-ext-pack
{% endif %}
      - vagrant
      - {{ sw.virtualbox }}
