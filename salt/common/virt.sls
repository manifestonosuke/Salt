{% from "sw.jinja" import sw with context %}


vbox:
  pkg.installed:
    - pkgs:
{% if salt['grains.get']('os') != 'Arch' %} 
      - virtualbox-ext-pack
{% endif %}
      - vagrant
      - {{ sw.virtualbox }}
