{% from "map.jinja" import map with context %}


vbox:
  pkg.installed:
    - pkgs:
      - virtualbox-ext-pack
      - vagrant
      - {{ map.virtualbox }}
