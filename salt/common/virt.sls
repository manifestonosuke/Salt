{% from "common/map.jinja" import virt with context %}


vbox:
  pkg.installed:
    - pkgs:
      - {{ virt.virtualbox }}
      - virtualbox-ext-pack
      - vagrant
